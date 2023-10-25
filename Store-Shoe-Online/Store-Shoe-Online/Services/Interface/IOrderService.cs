using Store_Shoe_Online.Models;

namespace Store_Shoe_Online.Services.Interface
{
    public interface IOrderService
    {
        public Task Add(Order order, List<CartItem> cartItems);
    }
}
