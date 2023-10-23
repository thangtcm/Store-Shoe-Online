using Store_Shoe_Online.Data;
using Store_Shoe_Online.Models;
using Store_Shoe_Online.Repository.GenericRepository;
using Store_Shoe_Online.Repository.Interface;

namespace Store_Shoe_Online.Repository
{
    public class ProductRepository : GenericRepository<Product>, IProductRepository
    {
        public ProductRepository(ApplicationDbContext dbContext) : base(dbContext)
        {
        }
    }
}
