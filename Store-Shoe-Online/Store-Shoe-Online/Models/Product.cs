using Newtonsoft.Json;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Runtime.CompilerServices;

namespace Store_Shoe_Online.Models
{
    public class Product
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        [DisplayName("Tên sản phẩm")]
        public string? ProductName { get; set; }
        [NotMapped]
        [DisplayFormat(DataFormatString = "{0:0.###}")]
        public double Rating { get; set; }
        [NotMapped]
        public bool IsFavorite { get; set; }
        [DisplayName("Mô tả sản phẩm")]
        public string? ProdductDescription { get; set; }
        [JsonIgnore]
        public int CategoryId { get; set; }
        [ForeignKey("CategoryId")]
        [JsonIgnore]
        public Category? Category { get; set; }
        public virtual ICollection<ProductDetail>? Details { get; set; }
    }
}
