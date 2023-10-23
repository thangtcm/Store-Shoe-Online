using Microsoft.EntityFrameworkCore.Query;
using Store_Shoe_Online.Models;

namespace Store_Shoe_Online.Services.Interface
{
    public interface ICategoryService
    {
        public Task<ICollection<Category>> GetListAsync();
        public Task<ICollection<Category>> GetListAsync(Func<IQueryable<Category>, IIncludableQueryable<Category, object>> includes);
        public Task Add(Category category);
        public Task<Category?> GetByIdAsync(int id);
        public Task<Category?> GetByIdAsync(int id, Func<IQueryable<Category>, IIncludableQueryable<Category, object>> includes);
        public Category? Get(int id);
        public Category? GetById(int id);
        public Task<bool> Delete(int Id);
        public Task Update(Category category);
    }
}
