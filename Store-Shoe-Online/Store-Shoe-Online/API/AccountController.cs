using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity.UI.Services;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Store_Shoe_Online.Data;
using Store_Shoe_Online.Helpers;
using Store_Shoe_Online.Services.Interface;
using Store_Shoe_Online.ViewModel;
using Microsoft.EntityFrameworkCore;
using Store_Shoe_Online.Models;

namespace Store_Shoe_Online.API
{
    [ApiController]
    [Route("api/[controller]")]
    public class AccountController : Controller
    {
        private readonly SignInManager<ApplicationUser> _signInManager;
        private readonly IUserService _userService;
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly ApplicationDbContext _context;
        private readonly IUserStore<ApplicationUser> _userStore;
        private readonly IUserEmailStore<ApplicationUser> _emailStore;
        private readonly IEmailSender _emailSender;
        private readonly ILogger<AccountController> _logger;
        private readonly IConfirmEmailService _confirmEmailService;
        private readonly IPasswordValidator<ApplicationUser> _passwordValidator;
        private readonly IUserValidator<ApplicationUser> _userValidator;
        public AccountController(SignInManager<ApplicationUser> signInManager, IUserService userService, ApplicationDbContext context,
            UserManager<ApplicationUser> userManager, IUserStore<ApplicationUser> userStore, IEmailSender emailSender, ILogger<AccountController> logger,
            IConfirmEmailService confirmEmailService, IPasswordValidator<ApplicationUser> passwordValidator, IUserValidator<ApplicationUser> userValidator)
        {
            _signInManager = signInManager;
            _userService = userService;
            _context = context;
            _userManager = userManager;
            _userStore = userStore;
            _emailStore = GetEmailStore();
            _emailSender = emailSender;
            _logger = logger;
            _confirmEmailService = confirmEmailService;
            _passwordValidator = passwordValidator;
            _userValidator = userValidator;
        }

        [HttpPost("Login")]
        public async Task<IActionResult> Login(UserInfoVM userVm)
        {
            try
            {
                if (string.IsNullOrEmpty(userVm.UserName) || string.IsNullOrEmpty(userVm.Password))
                    return StatusCode(StatusCodes.Status404NotFound, ResponseResult.CreateResponse("DataNull", "(UserName or Email) và (Password) không được để trống."));
                var userName = userVm.UserName;
                ApplicationUser? userResult = null;
                if (CallBack.IsValidEmail(userName))
                {
                    userResult = await _userManager.FindByEmailAsync(userVm.UserName);
                    if (userResult != null)
                    {
                        userName = userResult.UserName;
                    }
                }
                if (userResult == null)
                {
                    userResult = await _userManager.FindByNameAsync(userVm.UserName);
                    if (userResult != null)
                    {
                        userName = userResult.UserName;
                    }
                }
                if (userResult == null)
                    return StatusCode(StatusCodes.Status404NotFound, ResponseResult.CreateResponse("DataNull", "UserName or Email không tồn tại."));
                else
                {
                    var result = await _signInManager.PasswordSignInAsync(userName, userVm.Password, false, lockoutOnFailure: false);
                    if (result.Succeeded)
                    {
                        return StatusCode(StatusCodes.Status404NotFound, ResponseResult.CreateResponse("Success", "Đăng nhập thành công thành công.", new UserInfoVM(userResult)));

                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Có lỗi xảy ra khi Login\nDate: %s\nController: API Account\nNội dung lỗi: %s", DateTime.Now, ex.Message.ToString());
            }
            return StatusCode(StatusCodes.Status404NotFound, ResponseResult.CreateResponse("Server Error", "Đã có lỗi xảy ra từ máy chủ."));
        }

        [HttpGet("GetUser")]
        public async Task<IActionResult> GetUser(string? userId)
        {
            if (userId == null) return NotFound();
            try
            {
                var user = await _context.Users.FirstOrDefaultAsync(x => x.Id == userId);
                if (user == null)
                {
                    return StatusCode(StatusCodes.Status404NotFound, ResponseResult.CreateResponse("NotFound", "Tài khoản không tồn tại."));
                }
                return StatusCode(StatusCodes.Status404NotFound, ResponseResult.CreateResponse("Success", $"Lấy thông tin tài khoản {user.FullName} thành công.", new UserInfoVM(user)));
            }
            catch (Exception ex)
            {
                Console.WriteLine(
                ex.Message);
            }
            return StatusCode(StatusCodes.Status404NotFound, ResponseResult.CreateResponse("NotFound", "Tài khoản không tồn tại."));
        }

        [HttpGet("GetUsers")]
        public async Task<IActionResult> GetUsers()
        {
            try
            {
                List<UserInfoVM> users = new();
                var getusers = await _context.Users.ToListAsync();
                foreach (var user in getusers)
                {
                    UserInfoVM userVM = new UserInfoVM(user);
                    users.Add(userVM);
                }
                return StatusCode(StatusCodes.Status404NotFound, ResponseResult.CreateResponse("Success", $"Lấy dữ liệu thành công.", users));
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message.ToString());
            }
            return StatusCode(StatusCodes.Status404NotFound, ResponseResult.CreateResponse("Error Server", "Lấy danh sách tài khoản không thành công."));
        }

        [HttpPost("Register")]
        public async Task<IActionResult> Register(UserInfoVM model)
        {
            try
            {
                var user = CreateUser();
                user.FullName = model.FullName;
                user.PhoneNumber = model.NumberPhone ?? string.Empty;
                user.EmailConfirmed = true;
                await _userStore.SetUserNameAsync(user, model.UserName, CancellationToken.None);
                await _emailStore.SetEmailAsync(user, model.Email, CancellationToken.None);

                var result = await _userManager.CreateAsync(user, model.Password);
                if (result.Succeeded)
                {
                    return StatusCode(StatusCodes.Status200OK, new { Message = $"Đăng ký tài khoản của {model.FullName} thành công." });
                }
                return StatusCode(StatusCodes.Status500InternalServerError, new { Error = result.Errors });
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message.ToString());
            }
            return StatusCode(StatusCodes.Status404NotFound, ResponseResult.CreateResponse("Error", "Đã có lỗi xảy ra trong quá trình tạo tài khoản (Vui lòng liên hệ đội ngũ Admin để được hỗ trợ)."));
        }


        [HttpPost("ConfirmEmail")]
        public async Task<IActionResult> ConfirmEmail(ConfirmEmail model)
        {
            try
            {
                if (await _confirmEmailService.IsValid(model)) return StatusCode(StatusCodes.Status200OK, ResponseResult.CreateResponse("Success", "Xác nhận email thành công."));
                else return StatusCode(StatusCodes.Status404NotFound, ResponseResult.CreateResponse("Error", "Mã xác thực không tồn tại."));
            }
            catch (Exception ex)
            {
                _logger.LogError(ex.Message.ToString(), ex);
            }
            return StatusCode(StatusCodes.Status404NotFound, ResponseResult.CreateResponse("Error", "Đã có lỗi xảy ra trong quá trình tạo tài khoản (Vui lòng liên hệ đội ngũ Admin để được hỗ trợ)."));
        }

        [HttpPost("SendEmail")]
        public async Task<IActionResult> SendEmail(UserInfoVM model)
        {
            try
            {
                if (String.IsNullOrEmpty(model.Email)) return StatusCode(StatusCodes.Status404NotFound, ResponseResult.CreateResponse("AccountValid", "Email không hợp lệ."));
                var user = await _userManager.FindByEmailAsync(model.Email);
                var checkUsername = await _userManager.FindByNameAsync(model.UserName);
                if (user != null)
                    return StatusCode(StatusCodes.Status404NotFound, ResponseResult.CreateResponse("AccountValid", "Email đã tồn tại."));
                if (checkUsername != null)
                    return StatusCode(StatusCodes.Status404NotFound, ResponseResult.CreateResponse("AccountValid", "Tài khoản đã tồn tại."));
                if (await _confirmEmailService.CheckTimerSend(model.Email))
                    return StatusCode(StatusCodes.Status404NotFound, ResponseResult.CreateResponse("SendingTooMuch",
                        "Bạn đã vừa yêu cầu gửi lại mail xác thực, vui lòng đợi 5 phút sau nhấn để gửi tiếp."));
                user = new ApplicationUser()
                {
                    UserName = model.UserName,
                    Email = model.Email,
                    PhoneNumber = model.NumberPhone
                };
                var result = await _userValidator.ValidateAsync(_userManager, user);
                if (!result.Succeeded)
                {
                    return StatusCode(StatusCodes.Status500InternalServerError, new { Error = result.Errors });
                }
                result = await _passwordValidator.ValidateAsync(_userManager, user, model.Password);
                if (!result.Succeeded)
                {
                    return StatusCode(StatusCodes.Status500InternalServerError, new { Error = result.Errors });
                }
                Random random = new();
                var code = random.Next(1000, 9999);
                var emailConfirmResult = await _confirmEmailService.Add(model.Email, code);
                await _emailSender.SendEmailAsync(model.Email, "[Cửa hàng bán giày] Xác nhận email", CallBack.GetMailHtml(model.Email, model.FullName, code));
                return StatusCode(StatusCodes.Status200OK, ResponseResult.CreateResponse("Success", "Hệ thống đã gửi email xác thực thành công"));
            }
            catch (Exception ex)
            {
                _logger.LogError(ex.Message.ToString(), ex);
            }
            return StatusCode(StatusCodes.Status404NotFound, ResponseResult.CreateResponse("Server", "Đã có lỗi xảy ra trong quá trình tạo tài khoản (Vui lòng liên hệ đội ngũ Admin để được hỗ trợ)."));
        }

        [HttpPost("ChangePassword")]
        public async Task<IActionResult> ChangePassword(UserInfoVM model)
        {
            try
            {
                if (String.IsNullOrEmpty(model.UserId)) return StatusCode(StatusCodes.Status404NotFound, ResponseResult.CreateResponse("Server", "Tài khoản không tồn tại."));
                var user = await _userService.GetUser(model.UserId);
                if (user is null) return StatusCode(StatusCodes.Status404NotFound, ResponseResult.CreateResponse("Server", "Tài khoản không tồn tại."));
                var changePasswordResult = await _userManager.ChangePasswordAsync(user, model.PasswordOld, model.Password);
                if (!changePasswordResult.Succeeded)
                {
                    return StatusCode(StatusCodes.Status500InternalServerError, new { Error = changePasswordResult.Errors });
                }
                return StatusCode(StatusCodes.Status200OK, ResponseResult.CreateResponse("Success", "Đổi mật khẩu thành công."));
            }
            catch (Exception ex)
            {
                _logger.LogError(ex.Message.ToString(), ex);
            }
            return StatusCode(StatusCodes.Status404NotFound, ResponseResult.CreateResponse("Server", "Đã có lỗi xảy ra trong quá trình tạo tài khoản (Vui lòng liên hệ đội ngũ Admin để được hỗ trợ)."));
        }

        [HttpPost("UpdateUser")]
        public async Task<IActionResult> UpdateUser(UserInfoVM model)
        {
            try
            {

                if (String.IsNullOrEmpty(model.UserId)) return StatusCode(StatusCodes.Status404NotFound, ResponseResult.CreateResponse("Error", "Tài khoản không tồn tại."));
                if (String.IsNullOrEmpty(model.FullName)) return StatusCode(StatusCodes.Status404NotFound, ResponseResult.CreateResponse("Error", "Tên không được để trống."));
                if (!await _userService.UpdateUser(model)) return StatusCode(StatusCodes.Status404NotFound, ResponseResult.CreateResponse("Error", "Cập nhật tài khoản không thành công, đã có một số thông tin bị sai, hãy kiểm tra lại."));
                return StatusCode(StatusCodes.Status200OK, ResponseResult.CreateResponse("Success", "Cập nhật thông tin tài khoản thành công."));
            }
            catch (Exception ex)
            {
                _logger.LogError(ex.Message.ToString(), ex);
            }
            return StatusCode(StatusCodes.Status404NotFound, ResponseResult.CreateResponse("Server", "Đã có lỗi xảy ra trong quá trình tạo tài khoản (Vui lòng liên hệ đội ngũ Admin để được hỗ trợ)."));
        }
        private ApplicationUser CreateUser()
        {
            try
            {
                return Activator.CreateInstance<ApplicationUser>();
            }
            catch
            {
                throw new InvalidOperationException($"Can't create an instance of '{nameof(ApplicationUser)}'. " +
                    $"Ensure that '{nameof(ApplicationUser)}' is not an abstract class and has a parameterless constructor, or alternatively " +
                    $"override the register page in /Areas/Identity/Pages/Account/Register.cshtml");
            }
        }

        [EnableCors("luyentoan.vn")]
        private IUserEmailStore<ApplicationUser> GetEmailStore()
        {
            if (!_userManager.SupportsUserEmail)
            {
                throw new NotSupportedException("The default UI requires a user store with email support.");
            }
            return (IUserEmailStore<ApplicationUser>)_userStore;
        }
    }
}
