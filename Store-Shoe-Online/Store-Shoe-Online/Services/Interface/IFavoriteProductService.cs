namespace Store_Shoe_Online.Services.Interface
{
    public interface IFavoriteProductService
    {
        public Task<bool> Add(int ProductId, string? UserId);
        public Task Remove(int ProductId, string? UserId);
    }
}
