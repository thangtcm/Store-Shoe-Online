using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Query;
using Store_Shoe_Online.Models;
using Store_Shoe_Online.Repository.UnitOfWork;
using Store_Shoe_Online.Services.Interface;
using System.Net.WebSockets;

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
            List<ProductDetail> lst = new ();
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
                Console.WriteLine($"RUNNNN {model.Price} \n\n\n");
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
            => await _unitOfWork.ProductRepository.GetAsync(x => x.Id == id, null);

        public async Task<ICollection<Product>> GetListAsync()
            => await _unitOfWork.ProductRepository.GetAllAsync();

        public async Task<ICollection<Product>> GetListAsync(int categoryId, Func<IQueryable<Product>, IIncludableQueryable<Product, object>> includes)
        {
            if (categoryId == 0)
                return await _unitOfWork.ProductRepository.GetAllAsync(null, includes);
            return await _unitOfWork.ProductRepository.GetAllAsync(x => x.CategoryId == categoryId, includes);
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
