using Microsoft.AspNetCore.Identity;
using Store_Shoe_Online.Repository.GenericRepository;

namespace Store_Shoe_Online.Repository.Interface
{
    public interface IRoleRepository : IGenericRepository<IdentityRole>
    {
    }
}
