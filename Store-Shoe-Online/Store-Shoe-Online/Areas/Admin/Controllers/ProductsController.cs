using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Store_Shoe_Online.Data;
using Store_Shoe_Online.Helpers;
using Store_Shoe_Online.Models;
using Store_Shoe_Online.Services.Interface;

namespace Store_Shoe_Online.Areas.Admin.Controllers
{
    [Area("Admin")]
    [Authorize]
    [Authorize(Roles = Constants.Roles.Admin)]
    public class ProductsController : Controller
    {
        private readonly IProductService _productService;
        private readonly ICategoryService _categoryService;
        public ProductsController(IProductService productService, ICategoryService categoryService)
        {
            _productService = productService;
            _categoryService = categoryService;
        }

        public async Task<IActionResult> Index()
        {
            return View(await _productService.GetListAsync());
        }

        public async Task<IActionResult> Details(int id)
        {
            var product = await _productService.GetByIdAsync(id);
            if (product == null)
            {
                return NotFound();
            }
            return View(product);
        }

        public async Task<IActionResult> CreateAsync()
        {
            ViewData["CategoryId"] = new SelectList(await _categoryService.GetListAsync(), "Id", "CategoryName");
            var product = new Product();
            product.Details = new List<ProductDetail>();
            product.Details!.Add(new ProductDetail());
            return View(product);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create(Product product)
        {
            try
            {
                foreach(var item in product.Details!) { 
                    Console.WriteLine(item.Amount + "\n\n\n\n");
                }
                await _productService.Add(product);
                return RedirectToAction(nameof(Index));
            }catch(Exception ex)
            {
                Console.WriteLine(ex.Message.ToString());
            }
            ViewData["CategoryId"] = new SelectList(await _categoryService.GetListAsync(), "Id", "CategoryName");
            return View(product);
        }

        public async Task<IActionResult> Edit(int id)
        {
            var product = await _productService.GetByIdAsync(id);
            if (product == null)
            {
                return NotFound();
            }
            ViewData["CategoryId"] = new SelectList(await _categoryService.GetListAsync(), "Id", "CategoryName");
            return View(product);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, Product product)
        {
            if (id != product.Id)
            {
                return NotFound();
            }
            try
            {
                await _productService.Update(product);
                return RedirectToAction(nameof(Index));
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message.ToString());
            }
            ViewData["CategoryId"] = new SelectList(await _categoryService.GetListAsync(), "Id", "CategoryName");
            return View(product);
        }

        public async Task<IActionResult> Delete(int id)
        {
            var product = await _productService.GetByIdAsync(id);
            if (product == null)
            {
                return NotFound();
            }
            return View(product);
        }

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            await _productService.Remove(id);
            return RedirectToAction(nameof(Index));
        }

        public ActionResult AddProductDetail(int index)
        {
            var productDetail = new ProductDetail(); // Tạo một sản phẩm chi ti tiết mới
            return PartialView("_ProductDetail", productDetail);
        }
    }
}
