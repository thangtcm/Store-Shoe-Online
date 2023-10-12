using Store_Shoe_Online.Models;

namespace Store_Shoe_Online.Services.Interface
{
    public interface IConfirmEmailService
    {
        public Task<ConfirmEmail?> Add(string Email, int Code);
        public Task<bool> IsValid(ConfirmEmail model);
        public Task<ConfirmEmail?> GetByIdAsync(int? id);
        public ConfirmEmail? GetById(int id);
        public Task<bool> Delete(int Id);
        public Task<bool> CheckTimerSend(string email);
    }
}
