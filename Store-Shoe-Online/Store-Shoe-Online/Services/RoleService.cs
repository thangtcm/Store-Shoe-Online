using Microsoft.AspNetCore.Identity;
using Store_Shoe_Online.Repository.UnitOfWork;
using Store_Shoe_Online.Services.Interface;

namespace Store_Shoe_Online.Services
{
    public class RoleService : IRoleService
    {
        public IUnitOfWork _unitOfWork;
        public RoleService(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }
        public async Task<ICollection<IdentityRole>> GetRoles()
            => await _unitOfWork.RoleRepository.GetAllAsync();
    }
}
