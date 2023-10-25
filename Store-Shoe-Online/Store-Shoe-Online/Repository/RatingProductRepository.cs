using Store_Shoe_Online.Data;
using Store_Shoe_Online.Models;
using Store_Shoe_Online.Repository.GenericRepository;
using Store_Shoe_Online.Repository.Interface;

namespace Store_Shoe_Online.Repository
{
    public class RatingProductRepository : GenericRepository<RatingProduct>, IRatingProductRepository
    {
        public RatingProductRepository(ApplicationDbContext dbContext) : base(dbContext)
        {
        }
    }
}
