using Microsoft.AspNetCore.Identity;
using Store_Shoe_Online.Data;
using Store_Shoe_Online.Repository.GenericRepository;
using Store_Shoe_Online.Repository.Interface;

namespace Store_Shoe_Online.Repository
{
    public class RoleRepository : GenericRepository<IdentityRole>, IRoleRepository
    {
        public RoleRepository(ApplicationDbContext dbContext) : base(dbContext)
        {
        }
    }
}
