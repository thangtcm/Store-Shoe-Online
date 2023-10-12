using Store_Shoe_Online.Data;
using System.ComponentModel.DataAnnotations;

namespace Store_Shoe_Online.ViewModel
{
    public class UserInfoVM
    {
        public string? UserId { get; set; }
        public string? UserName { get; set; }
        public string? Email { get; set; }
        [Phone]
        public string? NumberPhone { get; set; }
        public string? FullName { get; set; }
        public string? Password { get; set; }
        public string? PasswordOld { get; set; }

        public UserInfoVM() { }

        public UserInfoVM(ApplicationUser user)
        {
            this.FullName = user.FullName;
            this.UserName = user.UserName;
            this.Email = user.Email;
            this.NumberPhone = user.PhoneNumber;
            this.UserId = user.Id;
        }
    }
}
