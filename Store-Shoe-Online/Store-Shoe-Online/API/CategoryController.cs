using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Store_Shoe_Online.Helpers;
using Store_Shoe_Online.Services.Interface;

namespace Store_Shoe_Online.API
{
    [Route("api/[controller]")]
    [ApiController]
    public class CategoryController : ControllerBase
    {
        private readonly ICategoryService _categoryService;
        private readonly ILogger<CategoryController> _logger;
        public CategoryController(ICategoryService categoryService, ILogger<CategoryController> logger)
        {
            _categoryService = categoryService;
            _logger = logger;
        }
        [HttpGet("GetCategorys")]
        public async Task<IActionResult> GetCategorys()
        {
            try
            {
                var categorys = await _categoryService.GetListAsync();
                return StatusCode(StatusCodes.Status200OK, ResponseResult.CreateResponse("Success", "Đã lấy danh sách thành công.", categorys));
            }
            catch(Exception ex)
            {
                _logger.LogError(ex.Message.ToString());
            }
            return StatusCode(StatusCodes.Status404NotFound, ResponseResult.CreateResponse("Error Server", "Đã có lỗi xảy ra từ máy chủ."));
        }

        [HttpGet("GetCategory")]
        public async Task<IActionResult> GetCategory(int Id)
        {
            try
            {
                var category = await _categoryService.GetByIdAsync(Id);
                return StatusCode(StatusCodes.Status200OK, ResponseResult.CreateResponse("Success", "Đã lấy dữ liệu thành công.", category));
            }
            catch (Exception ex)
            {
                _logger.LogError(ex.Message.ToString());
            }
            return StatusCode(StatusCodes.Status404NotFound, ResponseResult.CreateResponse("Error Server", "Đã có lỗi xảy ra từ máy chủ."));
        }
    }
}
