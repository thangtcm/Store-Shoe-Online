using Microsoft.AspNetCore.Identity;
using Store_Shoe_Online.Data;
using Store_Shoe_Online.Models;
using Store_Shoe_Online.Repository.UnitOfWork;
using Store_Shoe_Online.Services.Interface;

namespace Store_Shoe_Online.Services
{
    public class ConfirmEmailService : IConfirmEmailService
    {
        public IUnitOfWork _unitOfWork;
        public ConfirmEmailService(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }
        public async Task<ConfirmEmail?> Add(string Email, int Code)
        {
            ConfirmEmail confirm = new()
            {
                Email = Email,
                Code = Code,
                EndTime = DateTime.Now.AddMinutes(5)// Add 5 phut
            };
            _unitOfWork.ConfirmEmailRespository.Add(confirm);
            await _unitOfWork.CommitAsync();
            return confirm;
        }

        public async Task<bool> IsValid(ConfirmEmail model)
        {
            var email = await _unitOfWork.ConfirmEmailRespository.GetAsync(x => x.Email == model.Email && x.Code == model.Code && DateTime.Now < x.EndTime);
            if (email == null) return false;
            return true;
        }

        public async Task<bool> CheckTimerSend(string email)
        {
            var count = await _unitOfWork.ConfirmEmailRespository.CountAsync(x => x.Email!.Contains(email) && x.EndTime > DateTime.Now.AddMinutes(-5));
            return count > 2;
        }

        public async Task<bool> Delete(int Id)
        {
            var email = await _unitOfWork.ConfirmEmailRespository.GetAsync(x => x.Id == Id);
            if (email != null)
            {
                _unitOfWork.ConfirmEmailRespository.Remove(email);
                await _unitOfWork.CommitAsync();
                return true;
            }
            return false;
        }

        public ConfirmEmail? GetById(int id)
            => _unitOfWork.ConfirmEmailRespository.Get(x => x.Id == id);

        public async Task<ConfirmEmail?> GetByIdAsync(int? id)
            => await _unitOfWork.ConfirmEmailRespository.GetAsync(x => x.Id == id);
    }
}
