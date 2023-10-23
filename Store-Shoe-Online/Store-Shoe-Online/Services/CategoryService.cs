using Microsoft.EntityFrameworkCore.Query;
using Store_Shoe_Online.Models;
using Store_Shoe_Online.Repository.UnitOfWork;
using Store_Shoe_Online.Services.Interface;

namespace Store_Shoe_Online.Services
{
    public class CategoryService : ICategoryService
    {
        public IUnitOfWork _unitOfWork;
        public CategoryService(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }

        public async Task Add(Category category)
        {
            _unitOfWork.CategoryRepository.Add(category);
            await _unitOfWork.CommitAsync();
        }

        public async Task<bool> Delete(int Id)
        {
            var chappter = await _unitOfWork.CategoryRepository.GetAsync(x => x.Id == Id);
            if (chappter == null) return false;
            _unitOfWork.CategoryRepository.Update(chappter);
            await _unitOfWork.CommitAsync();
            return true;
        }

        public Category? Get(int id)
            => _unitOfWork.CategoryRepository.Get(x => x.Id == id);

        public async Task Update(Category category)
        {
            var model = await _unitOfWork.CategoryRepository.GetAsync(x => x.Id == category.Id);
            if(model != null)
            {
                model.CategoryName = category.CategoryName;
                model.CategoryDescription = category.CategoryDescription;
                _unitOfWork.CategoryRepository.Update(model);
                await _unitOfWork.CommitAsync();
            }
        }

        public async Task<ICollection<Category>> GetListAsync()
            => await _unitOfWork.CategoryRepository.GetAllAsync();

        public async Task<ICollection<Category>> GetListAsync(Func<IQueryable<Category>, IIncludableQueryable<Category, object>> includes)
            => await _unitOfWork.CategoryRepository.GetAllAsync(null, includes);

        public async Task<Category?> GetByIdAsync(int id)
            => await _unitOfWork.CategoryRepository.GetAsync(x => x.Id==id);

        public async Task<Category?> GetByIdAsync(int id, Func<IQueryable<Category>, IIncludableQueryable<Category, object>> includes)
            => await _unitOfWork.CategoryRepository.GetAsync(x => x.Id == id, includes);

        public Category? GetById(int id)
            => _unitOfWork.CategoryRepository.Get(x => x.Id == id);
    }

}
