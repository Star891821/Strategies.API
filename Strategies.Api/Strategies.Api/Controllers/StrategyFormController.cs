using AutoMapper;
using Microsoft.AspNetCore.Http.Extensions;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using NLog.Fluent;
using Strategies.Api.Models.ModelsDto;
using Strategies.Domain.Models;
using Strategies.Service.Interfaces;

namespace Strategies.Api.Controllers
{
    [Route("api/[controller]/[action]")]
    [ApiController]
    public class StrategyFormController : ControllerBase
    {
        private IConfiguration _configuration;
        private readonly IStrategyFormUnitOfWork _unitOfWork;
        private IMapper _mapper;
        public StrategyFormController(IStrategyFormUnitOfWork unitOfWork, IConfiguration configuration, IMapper mapper)
        {
            _unitOfWork = unitOfWork;
            _configuration = configuration;
            _mapper = mapper;
        }

        [HttpGet("{id}")]
        public async Task<IActionResult> GetStrategyFormDetailsById(int id)
        {
            var statusCode = StatusCodes.Status200OK;
            object? value;
            try
            {
                var item = _unitOfWork.StrategyFormService.GetById(id);

                if (item == null)
                {
                    statusCode = StatusCodes.Status404NotFound;
                    value = "GetStrategyFormDetailsById is not found";
                }
                else
                {
                    value = item;
                }
            }
            catch (Exception ex)
            {
                statusCode = StatusCodes.Status500InternalServerError;
                value = ex.Message;
            }
            finally
            {
            }
            return StatusCode(statusCode, value);
        }

        [HttpGet]
        public async Task<IActionResult> GetAllStrategyFormDetails()
        {
            var statusCode = StatusCodes.Status200OK;
            object? value = null;
            try
            {
                var item = _unitOfWork.StrategyFormService.GetAll();

                if (item == null)
                {
                    statusCode = StatusCodes.Status404NotFound;
                    value = "GetAllStrategyFormDetails is not found";
                }
                else
                {
                    value = item;
                }
            }
            catch (Exception ex)
            {
                statusCode = StatusCodes.Status500InternalServerError;
                value = ex.Message;
            }
            finally
            {
            }
            return StatusCode(statusCode, value);
        }
        [HttpPost]
        public async Task<IActionResult> InsertOrUpdate(StrategyFormDto strategyFormDto)
        {
            var statusCode = StatusCodes.Status200OK;
            object? value = null;
            try
            {
                _unitOfWork.BeginTransaction();
                var result = _mapper.Map<StrategyForm>(strategyFormDto);
                await _unitOfWork.StrategyFormService.InsertOrUpdate(result);
                await _unitOfWork.CompleteAsync();

                _unitOfWork.CommitTransaction();
                value = new { Formid = result.FormId, Message = "Success" };
                statusCode = StatusCodes.Status200OK;
            }
            catch (Exception ex)
            {
                statusCode = StatusCodes.Status500InternalServerError;
                value = new { Formid = "", Message = ex.Message };
                _unitOfWork.RollBack();
            }
           
            return StatusCode(statusCode, value);
        }
    }
}
