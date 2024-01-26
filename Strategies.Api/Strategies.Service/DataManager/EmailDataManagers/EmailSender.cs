using Strategies.Api.Models.ModelsDto;
using Strategies.Service.Interfaces;
using System.Net.Mail;
using System.Net;
using System.Text;

namespace Strategies.Service.DataManager.EmailDataManagers
{
    public class EmailSender : IEmailSender
    {
        private readonly EmailConfiguration _emailConfig;
        public EmailSender(EmailConfiguration emailConfig)
        {
            _emailConfig = emailConfig;
        }
        public void SendEmail(Message message)
        {
            var client = new System.Net.Mail.SmtpClient("sandbox.smtp.mailtrap.io", 2525)
            {
                Credentials = new NetworkCredential("7467eae0ec4c6d", "d0c71c5437ac95"),
                EnableSsl = true
            };
            client.Send("VVPSMSMSupport@example.com", "VVPSMSMTO@example.com", "VVPSMS Notification", "VVPSMS- Hello Welcome to VVPSMSM");
        }


        public async Task SendEmailAsync(EmailDto emailDto)
        {
            await SendAsync(emailDto);
        }

        private async Task SendAsync(EmailDto emailDto)
        {
            MailMessage message = new MailMessage(_emailConfig.From, emailDto.ToEmail);
            message.Subject = emailDto.Subject;
            message.Body = emailDto.Body;
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            System.Net.Mail.SmtpClient client = new System.Net.Mail.SmtpClient(_emailConfig.SmtpServer, _emailConfig.Port);
            System.Net.NetworkCredential basicCredential1 = new
            System.Net.NetworkCredential(_emailConfig.UserName, _emailConfig.Password);
            client.EnableSsl = true;
            client.UseDefaultCredentials = false;
            client.Credentials = basicCredential1;
            try
            {
                client.Send(message);
            }

            catch (Exception ex)
            {
                throw ex;
            }

        }
    }
}
