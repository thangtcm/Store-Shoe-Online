using Store_Shoe_Online.Data;
using Store_Shoe_Online.ViewModel;

namespace Store_Shoe_Online.Services.Interface
{
    public interface IUserService
    {
        public Task<ICollection<UserInfoVM>> GetUsers();
        public Task<ApplicationUser?> GetUser(string? id);
        public Task<bool> UpdateUser(UserInfoVM user);
        public Task<ApplicationUser?> GetUser();
    }
}
