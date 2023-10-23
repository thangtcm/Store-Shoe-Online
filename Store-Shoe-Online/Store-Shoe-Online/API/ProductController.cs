using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Store_Shoe_Online.Helpers;
using Store_Shoe_Online.Models;
using Store_Shoe_Online.Services.Interface;
using Microsoft.AspNetCore.Mvc.Rendering;
using X.PagedList;
using Microsoft.EntityFrameworkCore;
using System.Text.Json.Serialization;
using System.Text.Json;
using Store_Shoe_Online.ViewModel;

namespace Store_Shoe_Online.API
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProductController : ControllerBase
    {
        private readonly IProductService _productService;
        private readonly ILogger<ProductController> _logger;
        public ProductController(IProductService productService, ILogger<ProductController> logger)
        {
            _productService = productService;
            _logger = logger;
        }

        [HttpGet("GetProducts")]
        public async Task<IActionResult> GetProducts(int categoryId, int? page)
        {
            try
            {
                var products = await _productService.GetListAsync(categoryId, x => x.Include(x => x.Details!));
                int pagesize = 10;
                int maxpage = (products.Count / pagesize) + (products.Count % 10 == 0 ? 0 : 1);
                int pagenumber = page == null || page < 0 ? 1 : page.Value;
                PagedList<Product> lst = new(products, pagenumber, pagesize);
                var productDTOs = lst.Select(product => new ProductInfoVM
                {
                    Id = product.Id,
                    ProductName = product.ProductName,
                    ProdductDescription = product.ProdductDescription,
                    CategoryId = product.CategoryId,
                    Details = product.Details.Select(detail => new ProductDetailDTO
                    {
                        Id = detail.Id,
                        ProductId = detail.ProductId,
                        Price = detail.Price,
                        CodeColor = detail.CodeColor,
                        urlImage = detail.UrlImage
                    }).ToList()
                }).ToList();
                return StatusCode(StatusCodes.Status200OK, ResponseResult.CreateResponse("Success", "Đã lấy danh sách thành công.", new { Data = productDTOs, MaxPage = maxpage }));
            }
            catch(Exception ex)
            {
                _logger.LogError(ex.Message.ToString());
            }
            return StatusCode(StatusCodes.Status404NotFound, ResponseResult.CreateResponse("Error Server", "Đã có lỗi xảy ra từ máy chủ."));
        }

        [HttpGet("GetProduct")]
        public async Task<IActionResult> GetProduct(int Id)
        {
            try
            {
                var product = await _productService.GetByIdAsync(Id);
                if(product == null)
                {
                    return StatusCode(StatusCodes.Status404NotFound, ResponseResult.CreateResponse("Not Found", "Không tìm thấy dữ liệu."));
                }
                return StatusCode(StatusCodes.Status200OK, ResponseResult.CreateResponse("Success", "Lấy dữ liệu thành công.", product));

            }
            catch (Exception ex)
            {
                _logger.LogError(ex.Message.ToString());
            }
            return StatusCode(StatusCodes.Status404NotFound, ResponseResult.CreateResponse("Error Server", "Đã có lỗi xảy ra từ máy chủ."));

        }


        [HttpPost("AddProduct")]
        public async Task<IActionResult> AddProduct(List<Product> product)
        {
            try
            {
                await _productService.AddRange(product);
                return StatusCode(StatusCodes.Status200OK, ResponseResult.CreateResponse("Success", "Tạo sản phẩm thành công."));

            }catch(Exception ex)
            {
                _logger.LogError(ex.Message.ToString());
            }
            return StatusCode(StatusCodes.Status404NotFound, ResponseResult.CreateResponse("Error Server", "Đã có lỗi xảy ra từ máy chủ."));

        }

    }
}
