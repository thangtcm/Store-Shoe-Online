﻿using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Store_Shoe_Online.Models
{
    public class OrderDetail
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        public int ProductId { get; set; }
        [ForeignKey("ProductId")]
        public Product? Product { get; set; }
        public int OrderId { get; set; }
        [ForeignKey("OrderId")]
        public Order? Order { get; set; }
        public int Amount { get; set; }
        public double Price { get; set; }
    }
}
