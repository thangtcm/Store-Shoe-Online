using Store_Shoe_Online.Data;
using Store_Shoe_Online.Repository.GenericRepository;
using Store_Shoe_Online.Repository.Interface;

namespace Store_Shoe_Online.Repository
{
    public class UserRepository : GenericRepository<ApplicationUser>, IUserRepository
    {
        public UserRepository(ApplicationDbContext dbContext) : base(dbContext)
        {
        }
    }
}
