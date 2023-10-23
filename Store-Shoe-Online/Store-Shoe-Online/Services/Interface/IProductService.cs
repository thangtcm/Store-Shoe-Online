using Microsoft.EntityFrameworkCore.Query;
using Store_Shoe_Online.Models;

namespace Store_Shoe_Online.Services.Interface
{
    public interface IProductService
    {
        public Task<Product?> GetByIdAsync(int id);
        public Task<Product?> GetByIdAsync(int id, Func<IQueryable<Product>, IIncludableQueryable<Product, object>> includes);
        public Task<ICollection<Product>> GetListAsync();
        public Task<ICollection<Product>> GetListAsync(Func<IQueryable<Product>, IIncludableQueryable<Product, object>> includes);
        public Task Add(Product data);
        public Task AddRange(List<Product> data);
        public Task Update(Product data);
        public Product? Get(int id);
        public Task Remove(int Id);
    }
}
