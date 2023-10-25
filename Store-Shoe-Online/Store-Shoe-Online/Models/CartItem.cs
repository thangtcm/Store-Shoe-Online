namespace Store_Shoe_Online.Models
{
    public class CartItem
    {
        public int Quantity { set; get; }
        public ProductDetail? product { set; get; }
        public int Size { get; set; }
    }
}
