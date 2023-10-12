using Microsoft.AspNetCore.Identity;

namespace Store_Shoe_Online.Services.Interface
{
    public interface IRoleService
    {
        public Task<ICollection<IdentityRole>> GetRoles();
    }
}
