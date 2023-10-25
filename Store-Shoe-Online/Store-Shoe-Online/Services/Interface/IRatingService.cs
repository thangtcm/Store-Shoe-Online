using Microsoft.EntityFrameworkCore.Query;
using Store_Shoe_Online.Models;

namespace Store_Shoe_Online.Services.Interface
{
    public interface IRatingService 
    {
        //public Task<ICollection<RatingProduct>> GetListAsync();
        //public Task<ICollection<RatingProduct>> GetListAsync(Func<IQueryable<RatingProduct>, IIncludableQueryable<RatingProduct, object>> includes);
        public Task<bool> Add(int ProductId, string? UserId, double Rate);
        public Task<RatingProduct?> GetByIdAsync(int id);
        public Task<RatingProduct?> GetByIdAsync(int id, Func<IQueryable<RatingProduct>, IIncludableQueryable<RatingProduct, object>> includes);
        public RatingProduct? GetById(int id);
        public Task<bool> Update(int ProductId, string? UserId, double Rate);
    }
}
