using Strategies.Api.Models.ModelsDto;
using Strategies.Service.DataManager.EmailDataManagers;

namespace Strategies.Service.Interfaces
{
    public interface IEmailSender
    {
        void SendEmail(Message message);
        Task SendEmailAsync(EmailDto emailDto);
    }
}
