using Store_Shoe_Online.Repository.Interface;

namespace Store_Shoe_Online.Repository.UnitOfWork
{
    public interface IUnitOfWork
    {
        IUserRepository UserRepository { get; }
        IRoleRepository RoleRepository { get; }
        IConfirmEmailRespository ConfirmEmailRespository { get; }
        void Commit();
        void Rollback();
        Task CommitAsync();
        Task RollbackAsync();
    }
}
