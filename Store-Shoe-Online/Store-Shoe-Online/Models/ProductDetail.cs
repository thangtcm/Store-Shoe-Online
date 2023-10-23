using Newtonsoft.Json;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Store_Shoe_Online.Models
{
    public class ProductDetail
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        [JsonIgnore]
        public int ProductId { get; set; }
        [ForeignKey("ProductId")]
        [JsonIgnore]
        public Product? Product { get; set; }
        public double Price { get; set; }
        [JsonIgnore]
        public string? ImageName { get; set; }
        public int Amount { get; set; }
        public string? CodeColor { get; set; }
        [JsonIgnore]
        [NotMapped]
        public IFormFile? upload { get ; set; }
        public string? UrlImage { get; set; }
    }
}
