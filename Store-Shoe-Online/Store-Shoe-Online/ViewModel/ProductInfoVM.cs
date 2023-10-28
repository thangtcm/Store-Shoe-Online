using System.ComponentModel.DataAnnotations;

namespace Store_Shoe_Online.ViewModel
{
    public class ProductInfoVM
    {
        public int Id { get; set; }
        public string ProductName { get; set; }
        public string ProdductDescription { get; set; }
        public int CategoryId { get; set; }
        [DisplayFormat(DataFormatString = "{0:0.###}")]
        public double Rating { get; set; }
        public bool IsFavorite { get; set; }
        // Các thuộc tính khác bạn muốn bao gồm
        public List<ProductDetailDTO> Details { get; set; }
    }
    public class ProductDetailDTO
    {
        public int Id { get; set; }
        public int ProductId { get; set; }
        public double Price { get; set; }
        public string CodeColor { get; set; }
        public string urlImage { get; set; }
    }
}
