using Store_Shoe_Online.Data;
using Store_Shoe_Online.Repository.Interface;

namespace Store_Shoe_Online.Repository.UnitOfWork
{
    public class UnitOfWork : IUnitOfWork
    {
        private readonly ApplicationDbContext _context;
        private IUserRepository _userRepository;
        private IRoleRepository _roleRepository;
        private IConfirmEmailRespository _confirmEmailRespository;
#pragma warning disable CS8618
        public UnitOfWork(ApplicationDbContext context)
#pragma warning restore CS8618
        {
            _context = context;
        }

        public IUserRepository UserRepository
        {
            get
            {
                return _userRepository ??= new UserRepository(_context);
            }
        }

        public IRoleRepository RoleRepository
        {
            get
            {
                return _roleRepository ??= new RoleRepository(_context);
            }
        }

        public IConfirmEmailRespository ConfirmEmailRespository
        {
            get
            {
                return _confirmEmailRespository ??= new ConfirmEmailRespository(_context);
            }
        }
        public void Commit()
            => _context.SaveChanges();
        public async Task CommitAsync()
            => await _context.SaveChangesAsync();
        public void Rollback()
            => _context.Dispose();

        public async Task RollbackAsync()
            => await _context.DisposeAsync();
    }
}
