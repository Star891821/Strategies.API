using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using Strategies.Api.Models.ModelsDto;
using Strategies.Service.Interfaces;

namespace Strategies.Api.Controllers
{
    [Route("api/[controller]/[action]")]
    [ApiController]
    public class EmailController : Controller
    {
        private IConfiguration _configuration;
        private readonly IEmailSender _emailSender;
        private IMapper _mapper;
        public EmailController(IEmailSender emailSender, IConfiguration configuration, IMapper mapper)
        {
            _emailSender = emailSender;
            _configuration = configuration;
            _mapper = mapper;
        }

        [HttpPost]
        public async Task<IActionResult> SendEmail(EmailDto emailDto)
        {
            await _emailSender.SendEmailAsync(emailDto);
            return Ok("Successfully Sent Email");
        }

    }
}
