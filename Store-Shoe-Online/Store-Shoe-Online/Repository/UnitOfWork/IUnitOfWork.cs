using Store_Shoe_Online.Repository.Interface;

namespace Store_Shoe_Online.Repository.UnitOfWork
{
    public interface IUnitOfWork
    {
        IUserRepository UserRepository { get; }
        IRoleRepository RoleRepository { get; }
        IProductRepository ProductRepository { get; }
        IProductDetailRepository ProductDetailRepository { get; }
        IConfirmEmailRespository ConfirmEmailRespository { get; }
        ICategoryRepository CategoryRepository { get; }
        IRatingProductRepository RatingProductRepository { get; }
        IFavoriteProductRepository FavoriteProductRepository { get; }
        IOrderRepository OrderRepository { get; }
        IOrderDetailRepository OrderDetailRepository { get; }
        void Commit();
        void Rollback();
        Task CommitAsync();
        Task RollbackAsync();
    }
}
