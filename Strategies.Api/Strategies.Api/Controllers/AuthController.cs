﻿using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.IdentityModel.Tokens;
using Strategies.Api.Models.ModelsDto;
using Strategies.Service.Repository;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;

namespace Strategies.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AuthController : ControllerBase
    {
        private IConfiguration _configuration;
        private readonly ILoginService _dataRepository;
        public AuthController(IConfiguration configuration, ILoginService dataRepository)
        {
            _dataRepository = dataRepository;
            _configuration = configuration;
        }
        [AllowAnonymous]
        [Microsoft.AspNetCore.Mvc.HttpPost("Auth")]
        public async Task<IActionResult> Auth(LoginRequestDto loginRequest)
        {
            IActionResult response = Unauthorized();
            if (loginRequest != null)
            {
                string loginResponse = "";
               // var loginResponse = await _dataRepository.LoginDetails(loginRequest);
                if (loginResponse != null)
                {
                    var issuer = _configuration["Jwt:Issuer"];
                    var audience = _configuration["Jwt:Audience"];
                    var key = Encoding.UTF8.GetBytes(_configuration["Jwt:Key"]);
                    var signingCredentails = new SigningCredentials(
                        new SymmetricSecurityKey(key),
                        SecurityAlgorithms.HmacSha384Signature
                        );
                    var subject = new ClaimsIdentity(new[]
                    {
                       new Claim(JwtRegisteredClaimNames.Email,""),
                        new Claim(JwtRegisteredClaimNames.Email,""),
                    });
                    var expires = DateTime.UtcNow.AddMinutes(10);

                    var tokenDescriptor = new SecurityTokenDescriptor
                    {
                        Subject = subject,
                        Expires = expires,
                        Issuer = issuer,
                        Audience = audience,
                        SigningCredentials = signingCredentails
                    };

                    var tokenHandler = new JwtSecurityTokenHandler();
                    var token = tokenHandler.CreateToken(tokenDescriptor);
                    var jwtToken = tokenHandler.WriteToken(token);

                    return Ok(jwtToken);
                }
            }
            return response;
        }
    }
}
