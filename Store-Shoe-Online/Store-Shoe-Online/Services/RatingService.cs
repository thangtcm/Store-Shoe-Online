using Microsoft.EntityFrameworkCore.Query;
using Store_Shoe_Online.Models;
using Store_Shoe_Online.Repository.UnitOfWork;
using Store_Shoe_Online.Services.Interface;

namespace Store_Shoe_Online.Services
{
    public class RatingService : IRatingService
    {
        public IUnitOfWork _unitOfWork;
        private readonly IUserService _userService;
        public RatingService(IUserService userService, IUnitOfWork unitOfWork)
        {
            _userService = userService;
            _unitOfWork = unitOfWork;
        }
        public async Task<bool> Add(int ProductId, string? UserId, double Rate)
        {
            var user = await _userService.GetUser(UserId);
            if(user != null)
            {
                var ratingProduct = new RatingProduct()
                {
                    Rating = Rate,
                    ApplicationUser = user,
                    DateCreate = DateTime.Now,
                    ProductId = ProductId,
                };
                _unitOfWork.RatingProductRepository.Add(ratingProduct);
                await _unitOfWork.CommitAsync();
                return true;
            }    
            return false;
        }

        public async Task<bool> Update(int ProductId, string? UserId, double Rate)
        {
            var rating = await _unitOfWork.RatingProductRepository.GetAsync(x => x.ProductId == ProductId && x.UserId == UserId);
            if(rating != null)
            {
                rating.Rating = Rate;
                rating.DateCreate = DateTime.Now;
                _unitOfWork.RatingProductRepository.Update(rating);
                await _unitOfWork.CommitAsync();
                return true;
            }
            else
            {
                var user = await _userService.GetUser(UserId);
                if (user != null)
                {
                    var ratingProduct = new RatingProduct()
                    {
                        Rating = Rate,
                        ApplicationUser = user,
                        DateCreate = DateTime.Now,
                        ProductId = ProductId,
                    };
                    _unitOfWork.RatingProductRepository.Add(ratingProduct);
                    await _unitOfWork.CommitAsync();
                    return true;
                }
            }
            return false;
        }

        public RatingProduct? Get(int id)
            => _unitOfWork.RatingProductRepository.Get(x => x.Id == id);

        public RatingProduct? GetById(int id)
            =>  _unitOfWork.RatingProductRepository.Get(x => x.Id == id);

        public async Task<RatingProduct?> GetByIdAsync(int id)
            => await _unitOfWork.RatingProductRepository.GetAsync(x => x.Id == id);

        public async Task<RatingProduct?> GetByIdAsync(int id, Func<IQueryable<RatingProduct>, IIncludableQueryable<RatingProduct, object>> includes)
            => await _unitOfWork.RatingProductRepository.GetAsync(x => x.Id == id, includes);
    }
}
