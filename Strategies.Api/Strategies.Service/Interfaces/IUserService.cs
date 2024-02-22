using Strategies.Service.Repository;

namespace Strategies.Service.Interfaces
{
    public interface IUserService<T> : IGenericService<T>
    {
        T? GetByName(string name);
        string UpdatePassword(int UserId, string OldPassword, string newPassword);
        string InsertOrUpdateUser(T entity);
        bool CheckEmailExists(string EmailId);
        bool UpdateOTP(string OTP, string EmailId);
        bool IsOtpExpired(string EmailId);
        bool UpdatePassword(string newPassword, string EmailId);
        bool IsOtpValid(string EmailId, string OTP);

        T? ValidateUser(int UserId,string Password);
    }
}
