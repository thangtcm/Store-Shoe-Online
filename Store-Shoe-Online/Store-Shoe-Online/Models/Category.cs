using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Store_Shoe_Online.Models
{
    public class Category
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        [Required]
        public string? CategoryName { get; set; }
        public string? CategoryDescription { get; set; }
        public virtual ICollection<Product>? Products { get; set; }
    }
}
