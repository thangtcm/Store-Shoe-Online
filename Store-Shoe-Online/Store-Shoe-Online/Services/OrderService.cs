using Store_Shoe_Online.Models;
using Store_Shoe_Online.Repository.UnitOfWork;
using Store_Shoe_Online.Services.Interface;

namespace Store_Shoe_Online.Services
{
    public class OrderService : IOrderService
    {
        public IUnitOfWork _unitOfWork;
        public OrderService(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }

        public async Task Add(Order order, List<CartItem> cartItems)
        {
            order.DateOrder = DateTime.Now;
            double totalPrice = 0;
            List<OrderDetail> lst = new ();
            foreach (var cartitem in cartItems!)
            {
                var product = await _unitOfWork.ProductDetailRepository.GetAsync(x => x.Id == cartitem.product!.Id);
                var orderDetail = new OrderDetail()
                {
                    Order = order,
                    Amount = cartitem.Quantity,
                    ProductDetailId = cartitem.product!.Id,
                    Price = cartitem.product.Price,
                };
                product!.Amount -= cartitem.Quantity;
                totalPrice += orderDetail.Price * orderDetail.Amount;
                lst.Add(orderDetail);
            }
            order.TotalPrice = totalPrice;
            order.OrderDetails = lst;
            _unitOfWork.OrderRepository.Add(order);
            await _unitOfWork.CommitAsync();
        }
    }
}
