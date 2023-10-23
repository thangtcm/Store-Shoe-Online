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
        private IProductDetailRepository _productDetailRepository;
        private IProductRepository _productRepository;
        private ICategoryRepository _categoryRepository;
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

        public IProductRepository ProductRepository
        {
            get
            {
                return _productRepository ??= new ProductRepository(_context);
            }
        }

        public IProductDetailRepository ProductDetailRepository
        {
            get
            {
                return _productDetailRepository ??= new ProductDetailRepository(_context);
            }
        }

        public ICategoryRepository CategoryRepository
        {
            get
            {
                return _categoryRepository??= new CategoryRepository(_context);
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
