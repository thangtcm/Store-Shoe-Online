namespace Store_Shoe_Online.Helpers
{
    public static class ResponseResult
    {
        public static object CreateResponse(string code, string message, object? data = null)
        {
            var response = new { Code = code, Description = message, Data = data };
            return response;
        }
    }
}
