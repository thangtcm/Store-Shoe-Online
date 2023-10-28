using Store_Shoe_Online.Models;
using Store_Shoe_Online.Repository.UnitOfWork;
using Store_Shoe_Online.Services.Interface;

namespace Store_Shoe_Online.Services
{
    public class FavoriteProductService : IFavoriteProductService
    {
        public IUnitOfWork _unitOfWork;
        private readonly IUserService _userService;
        public FavoriteProductService(IUnitOfWork unitOfWork, IUserService userService)
        {
            _unitOfWork = unitOfWork;
            _userService = userService;
        }    
        public async Task<bool> Add(int ProductId, string? UserId)
        {
            var user = await _userService.GetUser(UserId);
            var product = await _unitOfWork.ProductRepository.GetAsync(x => x.Id == ProductId);
            if(user != null && product != null)
            {
                var farvorite = await _unitOfWork.FavoriteProductRepository.GetAsync(x => x.UserId == user.Id && x.ProductId == ProductId);
                if(farvorite == null)
                {
                    farvorite = new FavoriteProduct()
                    {
                        ProductId = product.Id,
                        DateCreate = DateTime.Now,
                        UserId = user.Id,
                        IsFavorite = true
                    };
                    _unitOfWork.FavoriteProductRepository.Add(farvorite);
                    await _unitOfWork.CommitAsync();
                }
                else
                {
                    farvorite.IsFavorite = !farvorite.IsFavorite;
                    _unitOfWork.FavoriteProductRepository.Update(farvorite);
                    await _unitOfWork.CommitAsync();
                }
                return true;
            }    
            return false;
        }

        public async Task Remove(int ProductId, string? UserId)
        {
            var farvorite = await _unitOfWork.FavoriteProductRepository.GetAsync(x => x.ProductId == ProductId && x.UserId == UserId);
            if(farvorite != null)
            {
                _unitOfWork.FavoriteProductRepository.Remove(farvorite);
                await _unitOfWork.CommitAsync();
            }
        }
    }
}
