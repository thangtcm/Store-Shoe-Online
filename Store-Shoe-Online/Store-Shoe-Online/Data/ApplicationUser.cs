using Microsoft.AspNetCore.Identity;
using System.ComponentModel;

namespace Store_Shoe_Online.Data
{
    public class ApplicationUser : IdentityUser
    {
        [DisplayName("Địa chỉ")]
        public string? Address { get; set; }
        public string? FullName { get; set; }
    }
}
