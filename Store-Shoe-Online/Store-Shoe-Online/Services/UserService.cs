using Microsoft.AspNetCore.Identity;
using Store_Shoe_Online.Data;
using Store_Shoe_Online.Repository.UnitOfWork;
using Store_Shoe_Online.Services.Interface;
using Store_Shoe_Online.ViewModel;

namespace Store_Shoe_Online.Services
{
    public class UserService : IUserService
    {
        public IUnitOfWork _unitOfWork;
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly IHttpContextAccessor _httpContextAccessor;
        public UserService(IUnitOfWork unitOfWork, UserManager<ApplicationUser> userManager, IHttpContextAccessor httpContextAccessor)
        {
            _unitOfWork = unitOfWork;
            _userManager = userManager;
            _httpContextAccessor = httpContextAccessor;
        }

        public async Task<ApplicationUser?> GetUser()
            => await _userManager.GetUserAsync(_httpContextAccessor.HttpContext!.User);

        public async Task<ICollection<UserInfoVM>> GetUsers()
        {
            var userlst = await _unitOfWork.UserRepository.GetAllAsync();
            ICollection<UserInfoVM> userlstVM = new List<UserInfoVM>();
            foreach(var user in userlst)
            {
                UserInfoVM model = new UserInfoVM(user);
                userlstVM.Add(model);
            }    
            return userlstVM;
        }    

        public async Task<ApplicationUser?> GetUser(string? id)
            => await _unitOfWork.UserRepository.GetAsync(x => x.Id == id);

        public async Task<bool> UpdateUser(UserInfoVM user)
        {
            if (user.UserId is null) return false;
            var userModel = await _unitOfWork.UserRepository.GetAsync(x => x.Id.Contains(user.UserId!));
            if (userModel is null) return false;
            userModel.FullName = user.FullName;
            userModel.PhoneNumber = user.NumberPhone;
            _unitOfWork.UserRepository.Update(userModel);
            await _unitOfWork.CommitAsync();
            return true;
        }
    }
}
