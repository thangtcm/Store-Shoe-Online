using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.CodeAnalysis;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Query;
using Store_Shoe_Online.Models;
using Store_Shoe_Online.Repository.UnitOfWork;
using Store_Shoe_Online.Services.Interface;
using System.Net.WebSockets;
using System.Security.Cryptography;

namespace Store_Shoe_Online.Services
{
    public class ProductService : IProductService
    {
        public IUnitOfWork _unitOfWork;
        private readonly IWebHostEnvironment _hostEnvironment;
        public ProductService(IUnitOfWork unitOfWork, IWebHostEnvironment hostEnvironment)
        {
            _unitOfWork = unitOfWork;
            _hostEnvironment = hostEnvironment;
        }
        public async Task Add(Product data)
        {
            List<ProductDetail> lst = new();
            _unitOfWork.ProductRepository.Add(data);
            foreach (var model in data.Details!)
            {
                if (model.upload != null && model.upload.Length > 0)
                {
                    string wwwRootPath = _hostEnvironment.WebRootPath;
                    string fileName = Path.GetFileNameWithoutExtension(model.upload.FileName);
                    string extension = Path.GetExtension(model.upload.FileName);
                    fileName = fileName + DateTime.Now.ToString("yymmssfff") + extension;
                    string path = Path.Combine(wwwRootPath + "/Image/", fileName);
                    model.ImageName = fileName;
                    model.UrlImage = path;
                    using (var fileSrteam = new FileStream(path, FileMode.Create))
                    {
                        await model.upload.CopyToAsync(fileSrteam);
                    }

                }
                model.Product = data;
                lst.Add(model);
            }
            _unitOfWork.ProductDetailRepository.AddRange(lst);
            await _unitOfWork.CommitAsync();
        }

        public async Task AddRange(List<Product> data)
        {
            _unitOfWork.ProductRepository.AddRange(data);
            await _unitOfWork.CommitAsync();
        }
        public Product? Get(int id)
            => _unitOfWork.ProductRepository.Get(x => x.Id == id);

        public async Task<Product?> GetByIdAsync(int id)
            => await _unitOfWork.ProductRepository.GetAsync(x => x.Id == id);

        public async Task<Product?> GetByIdAsync(int id, Func<IQueryable<Product>, IIncludableQueryable<Product, object>> includes)
        {
            var product = await _unitOfWork.ProductRepository.GetAsync(x => x.Id == id, null);
            if (product != null)
            {
                var rating = await _unitOfWork.RatingProductRepository.GetAllAsync(x => x.ProductId == product.Id);
                var ratingScore = rating.Sum(x => x.Rating) / rating.Count;
                product.Rating = ratingScore;
                return product;
            }
            return null;
        }

        public async Task<ICollection<Product>> GetFavoriteListAsync(string userId)
        {
            var pfavorite = await _unitOfWork.FavoriteProductRepository.GetAllAsync(x => x.UserId == userId); 
            var products = await _unitOfWork.ProductRepository.GetAllAsync(x => pfavorite.Select(p => p.ProductId).ToList().Contains(x.Id));
            if (products.Count > 0)
            {
                var productIds = products.Select(p => p.Id).ToList();
                var ratings = await _unitOfWork.RatingProductRepository.GetAllAsync(x => productIds.Contains(x.ProductId));
                if (ratings.Count > 0)
                {
                    var ratingScores = ratings.GroupBy(r => r.ProductId)
                        .ToDictionary(group => group.Key, group => group.Average(r => r.Rating));

                    foreach (var product in products)
                    {
                        if (ratingScores.ContainsKey(product.Id))
                        {
                            product.Rating = ratingScores[product.Id];
                        }
                    }
                }

            }
            return products;
        }    
        public async Task<ICollection<Product>> GetListAsync()
        {
            var products = await _unitOfWork.ProductRepository.GetAllAsync();
            if (products.Count > 0)
            {
                var productIds = products.Select(p => p.Id).ToList();
                var ratings = await _unitOfWork.RatingProductRepository.GetAllAsync(x => productIds.Contains(x.ProductId));
                if (ratings.Count > 0)
                {
                    var ratingScores = ratings.GroupBy(r => r.ProductId)
                        .ToDictionary(group => group.Key, group => group.Average(r => r.Rating));

                    foreach (var product in products)
                    {
                        if (ratingScores.ContainsKey(product.Id))
                        {
                            product.Rating = ratingScores[product.Id];
                        }
                    }
                }

            }
            return products;
        } 

        public async Task<ICollection<Product>> GetListAsync(int categoryId, Func<IQueryable<Product>, IIncludableQueryable<Product, object>> includes)
        {
            var products = await _unitOfWork.ProductRepository.GetAllAsync(categoryId == 0 ? null : x => x.CategoryId == categoryId, includes);
            if (products.Count > 0)
            {
                var ratings = await _unitOfWork.RatingProductRepository.GetAllAsync(x => products.Select(p => p.Id).ToList().Contains(x.ProductId));
                if (ratings.Count > 0)
                {
                    var ratingSumByProductId = ratings
                .GroupBy(r => r.ProductId)
                .ToDictionary(group => group.Key, group => group.Sum(r => r.Rating));

                    var ratingCountByProductId = ratings
                        .GroupBy(r => r.ProductId)
                        .ToDictionary(group => group.Key, group => group.Count());

                    foreach (var product in products)
                    {
                        if (ratingSumByProductId.ContainsKey(product.Id))
                        {
                            var ratingSum = ratingSumByProductId[product.Id];
                            var ratingCount = ratingCountByProductId[product.Id];
                            product.Rating = ratingCount > 0 ? (ratingSum / ratingCount) : 5.0;
                        }
                    }
                }
                else
                {
                    foreach (var product in products)
                    {
                        product.Rating = 5.0;
                    }
                }
            }
            return products;
        }

        public async Task Remove(int Id)
        {
            var exist = await _unitOfWork.ProductRepository.GetAsync(x => x.Id == Id);
            if (exist != null)
            {
                _unitOfWork.ProductRepository.Remove(exist);
                await _unitOfWork.CommitAsync();
            }
        }
        public async Task Update(Product data)
        {
            _unitOfWork.ProductRepository.Update(data);
            await _unitOfWork.CommitAsync();
        }
    }
}
