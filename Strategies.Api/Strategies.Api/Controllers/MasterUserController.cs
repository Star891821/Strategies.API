using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Strategies.Api.Models.ModelsDto;
using Strategies.Domain.Models;
using Strategies.Service.DataManager;
using Strategies.Service.Interfaces;
using System.Security.Cryptography;

namespace Strategies.Api.Controllers
{
    [Route("api/[controller]/[action]")]
    [ApiController]
    public class MasterUserController : ControllerBase
    {
        private IConfiguration _configuration;
        IUserService<MstUser> userService;
        private readonly IEmailSender _emailSender;

        public MasterUserController(IUserService<MstUser> genericService,IConfiguration configuration,IEmailSender emailSender)
        {
            userService = genericService;
            _configuration = configuration;
            _emailSender = emailSender;
        }

        [HttpGet("{name}")]
        [AllowAnonymous]
        public IActionResult? GetUserByName(string name)
        {
            var statusCode = StatusCodes.Status200OK;
            object? value = null;
            try
            {
                var item = userService.GetByName(name);
                if (item == null)
                {
                    statusCode = StatusCodes.Status404NotFound;
                    value = new { Values = "", Message = "UserByName data is not found", StatusCode = statusCode };
                }
                else
                {
                    value = new { Values = item, Message = "Success", StatusCode = statusCode };
                }
            }
            catch (Exception ex)
            {
                statusCode = StatusCodes.Status500InternalServerError;
                value = new { Values = "", Message = ex.Message, StatusCode = statusCode };
            }
            return StatusCode(statusCode, value);
        }


        [HttpPost]
      //  [Authorize]
        public IActionResult EncryptPassword(string clearText)
        {
            var encryptionKey = _configuration["PassPhrase:Key"];
            StringEncryptionService a = new StringEncryptionService();
            var result = a.EncryptAsync(clearText, encryptionKey);
            return Ok(result.Result);
        }

        [HttpPost]
      //  [Authorize]
        public IActionResult DecryptPassword(string cipherText)
        {
            var encryptionKey = _configuration["PassPhrase:Key"];
            byte[] cipherBytes = Convert.FromBase64String(cipherText);
            StringEncryptionService a = new StringEncryptionService();
            var result = a.DecryptAsync(cipherBytes, encryptionKey);
            return Ok(result.Result);
        }

        [HttpGet]
       // [Authorize]
        public IActionResult? GetAll()
        {
            var statusCode = StatusCodes.Status200OK;
            object? value = null;
            try
            {
                var item = userService.GetAll();
                if (item == null)
                {
                    statusCode = StatusCodes.Status404NotFound;
                    value = new { Values = "", Message = "GetAll data is not found", StatusCode = statusCode };
                }
                else
                {
                    value = new { Values = item, Message = "Success", StatusCode = statusCode };
                }
            }
            catch (Exception ex)
            {
                statusCode = StatusCodes.Status500InternalServerError;
                value = new { Values = "", Message = ex.Message, StatusCode = statusCode };
            }
            return StatusCode(statusCode, value);
        }

        [HttpGet("{id}")]
        [AllowAnonymous]
        public IActionResult? GetById(int id)
        {
            var statusCode = StatusCodes.Status200OK;
            object? value = null;
            try
            {
                var item = userService.GetById(id);
                if (item == null)
                {
                    statusCode = StatusCodes.Status404NotFound;
                    value = new { Values = "", Message = "GetById data is not found", StatusCode = statusCode };
                }
                else
                {
                    value = new { Values = item, Message = "Success", StatusCode = statusCode };
                }
            }
            catch (Exception ex)
            {
                statusCode = StatusCodes.Status500InternalServerError;
                value = new { Values = "", Message = ex.Message, StatusCode = statusCode };
            }
           
            return StatusCode(statusCode, value);
        }


        [HttpPost, ActionName("InsertOrUpdate")]
        //   [ServiceFilter(typeof(ValidationFilterAttribute))]
        [AllowAnonymous]
        public IActionResult Post([FromBody] MstUser values)
        {
            var statusCode = StatusCodes.Status200OK;
            object? value = null;
            try
            {
                var item = userService.InsertOrUpdateUser(values);
                if (string.IsNullOrEmpty(item))
                {
                    statusCode = StatusCodes.Status404NotFound;
                    value = new { Values = "", Message = "InsertOrUpdate data is not found", StatusCode = statusCode };
                }
                else
                {
                    value = new { Values = item, Message = "Success", StatusCode = statusCode };
                }
            }
            catch (Exception ex)
            {
                statusCode = StatusCodes.Status500InternalServerError;
                value = new { Values = "", Message = ex.Message, StatusCode = statusCode };
            }
            
            return StatusCode(statusCode, value);
        }

        [HttpPost, ActionName("GenerateForgotPasswordOTP")]
        [AllowAnonymous]
        public IActionResult GenerateForgotPasswordOTP(string EmailId)
        {
            var statusCode = StatusCodes.Status200OK;
            object? value = null;
            try
            {
                var IsEmailExists = userService.CheckEmailExists(EmailId);
                if (IsEmailExists)
                {
                    // Generate OTP 
                    string otp = GenerateRandomOTP(6);
                    var IsOtpUpdated = userService.UpdateOTP(otp, EmailId);
                    if (IsOtpUpdated)
                    {
                        // Send Email
                        EmailDto emailDto = new EmailDto();
                        emailDto.Subject = string.Format("OTP for Password Reset is {0}", otp);
                        emailDto.ToEmail = EmailId;
                        emailDto.Body = string.Format("OTP for Password Reset is {0}. It will expire in next 5mins", otp);
                        var res = _emailSender.SendEmailAsync(emailDto);
                        value = new { Values = "", Message = "Success", StatusCode = statusCode };
                    }
                    else
                    {
                        statusCode = StatusCodes.Status500InternalServerError;
                        value = new { Values = "", Message = "Failed to Generate and Save OTP", StatusCode = statusCode };
                    }
                }
                else
                {
                    statusCode = StatusCodes.Status404NotFound;
                    value = new { Values = "", Message = "User Email is not found", StatusCode = statusCode };
                }
            }
            catch (Exception ex)
            {
                statusCode = StatusCodes.Status500InternalServerError;
                value = new { Values = "", Message = ex.Message, StatusCode = statusCode };
            }
            return StatusCode(statusCode, value);
        }

        [HttpPost, ActionName("ValidateOTP")]
        [AllowAnonymous]
        public IActionResult ValidateOTP(string OTP, string EmailId)
        {
            var statusCode = StatusCodes.Status200OK;
            object? value = null;
            try
            {
                var IsOtpValid = userService.IsOtpValid(EmailId, OTP);
                if (!IsOtpValid)
                {
                    statusCode = StatusCodes.Status404NotFound;
                    value = new { Values = "", Message = "Invalid OTP", StatusCode = statusCode };
                    return StatusCode(statusCode, value);
                }
                else
                {
                    value = "Valid OTP";
                    value = new { Values = "Successful", Message = "Valid OTP", StatusCode = statusCode };
                }
            }
            catch (Exception ex)
            {
                statusCode = StatusCodes.Status500InternalServerError;
                value = new { Values = "", Message = ex.Message, StatusCode = statusCode };
            }
            
            return StatusCode(statusCode, value);
        }

        [HttpPost, ActionName("UpdatePasswordWithOTP")]
        [AllowAnonymous]
        public IActionResult UpdatePasswordWithOTP(string OTP, string NewPassword, string EmailId)
        {
            var statusCode = StatusCodes.Status200OK;
            object? value = null;
            try
            {
                var IsOtpValid = userService.IsOtpValid(EmailId, OTP);
                if (!IsOtpValid)
                {
                    statusCode = StatusCodes.Status404NotFound;
                    value = new { Values = "", Message = "Invalid OTP", StatusCode = statusCode };
                    return StatusCode(statusCode, value);
                }
                var IsOtpExpired = userService.IsOtpExpired(EmailId);
                if (!IsOtpExpired)
                {
                    // Update new password
                    var result = userService.UpdatePassword(NewPassword, EmailId);
                    if (result)
                    {
                        statusCode = StatusCodes.Status200OK;
                        value = new { Values = "Successful", Message = "Success", StatusCode = statusCode };
                    }
                    else
                    {
                        statusCode = StatusCodes.Status404NotFound;
                        value = new { Values = "", Message = "Failed to Update Password", StatusCode = statusCode };
                    }
                }
                else
                {
                    statusCode = StatusCodes.Status404NotFound;
                    value = new { Values = "", Message = "Invalid User Email / OTP is expired", StatusCode = statusCode };
                }
            }
            catch (Exception ex)
            {
                statusCode = StatusCodes.Status500InternalServerError;
                value = new { Values = "", Message = ex.Message, StatusCode = statusCode };
            }
            
            return StatusCode(statusCode, value);
        }


        [HttpPost, ActionName("UpdatePassword")]
        [AllowAnonymous]
        public IActionResult UpdatePassword(int UserId, string oldPassword, string newPassword)
        {
            var statusCode = StatusCodes.Status200OK;
            object? value = null;
            try
            {
                var item = userService.UpdatePassword(UserId, oldPassword, newPassword);
                if (string.IsNullOrEmpty(item))
                {
                    statusCode = StatusCodes.Status404NotFound;
                    value = new { Values = "", Message = "User data is not found", StatusCode = statusCode };
                }
                else
                {
                    value = new { Values = item, Message = "Success", StatusCode = statusCode };
                }
            }
            catch (Exception ex)
            {
                statusCode = StatusCodes.Status500InternalServerError;
                value = new { Values = "", Message = ex.Message, StatusCode = statusCode };
            }
            
            return StatusCode(statusCode, value);
        }

        [HttpDelete]
     //   [Authorize]
        public IActionResult Delete(int id)
        {
            var statusCode = StatusCodes.Status200OK;
            object? value = null;
            try
            {
                var item = userService.Delete(id);
                if (item == null)
                {
                    statusCode = StatusCodes.Status404NotFound;
                    value = new { Values = "", Message = "Data not found to delete", StatusCode = statusCode };
                }
                else
                {
                    value = new { Values = item, Message = "Success", StatusCode = statusCode };
                }
            }
            catch (Exception ex)
            {
                statusCode = StatusCodes.Status500InternalServerError;
                value = new { Values = "", Message = ex.Message, StatusCode = statusCode };
            }
            
            return StatusCode(statusCode, value);
        }


        static string GenerateRandomOTP(int length)
        {
            const string chars = "0123456789";
            using (var rng = new RNGCryptoServiceProvider())
            {
                byte[] data = new byte[length];
                rng.GetBytes(data);
                var otp = new char[length];
                for (int i = 0; i < length; i++)
                {
                    otp[i] = chars[data[i] % chars.Length];
                }
                return new string(otp);
            }
        }

    }
}
