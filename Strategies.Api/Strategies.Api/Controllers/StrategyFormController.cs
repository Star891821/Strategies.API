using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Storage;
using Strategies.Api.Models.ModelsDto;
using Strategies.Domain.Models;
using Strategies.Service.DataManager;
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
                var item = await _unitOfWork.StrategyFormService.GetById(id);

                if (item == null)
                {
                    statusCode = StatusCodes.Status404NotFound;
                    value = "GetStrategyFormDetailsById is not found";
                }
                else
                {
                    value = GetItemsDto(item);
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

        private StrategyFormDto GetItemsDto(StrategyForm item)
        {
            return _mapper.Map<StrategyFormDto>(item);
        }
        private List<StrategyFormDto> GetListOfItemsDto(List<StrategyForm> items)
        {
            List<StrategyFormDto> newlist = new List<StrategyFormDto>();
            foreach (var item in items)
            {
                newlist.Add(_mapper.Map<StrategyFormDto>(item));
            }
            return newlist;
        }

        [HttpGet]
        public async Task<IActionResult> GetAllStrategyFormDetails()
        {
            var statusCode = StatusCodes.Status200OK;
            object? value = null;
            try
            {
                var item = await _unitOfWork.StrategyFormService.GetAll();

                if (item == null)
                {
                    statusCode = StatusCodes.Status404NotFound;
                    value = "GetAllStrategyFormDetails is not found";
                }
                else
                {
                    value = GetListOfItemsDto(item);
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
        public async Task<IActionResult> GetStrategyFormDetailsbyUserId(int userId)
        {
            var statusCode = StatusCodes.Status200OK;
            object? value = null;
            try
            {
                var item = await _unitOfWork.StrategyFormService.GetbyUserId(userId);

                if (item == null)
                {
                    statusCode = StatusCodes.Status404NotFound;
                    value = "GetStrategyFormDetailsbyUserId is not found";
                }
                else
                {
                    value = GetListOfItemsDto(item);
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
                List<CustomerDto> customers = strategyFormDto.Customers;
                List<CustomerContactDetailDto> customerContactDetailDtos = strategyFormDto.CustomerContactDetails;
                List<EmploymentDetailDto> employmentDetailDtos = strategyFormDto.EmploymentDetails;
                StrategyFormDto objStrategyFormDto = strategyFormDto;
                objStrategyFormDto.Customers = strategyFormDto.Customers.Where(x => x.IsPartner == false).ToList();
                objStrategyFormDto.CustomerContactDetails = strategyFormDto.CustomerContactDetails.Where(x => x.IsPartner == false).ToList();
                objStrategyFormDto.EmploymentDetails = strategyFormDto.EmploymentDetails.Where(x => x.IsPartner == false).ToList();
                _unitOfWork.BeginTransaction();
                var result = _mapper.Map<StrategyForm>(objStrategyFormDto);
                await _unitOfWork.StrategyFormService.InsertOrUpdate(result);
                await _unitOfWork.CompleteAsync();
                foreach (var partner in customers.Where(x => x.IsPartner == true))
                {

                    foreach (var customer in result.Customers.Where(x => x.IsPartner == false).ToList())
                    {
                        partner.Pid = customer.CustomerId;
                        partner.FormId = customer.FormId;
                        _unitOfWork.customerService.InsertOrUpdate(_mapper.Map<Customer>(partner));
                        _unitOfWork.Complete();
                    }
                }
                foreach (var partnerContacts in customerContactDetailDtos.Where(x => x.IsPartner == true))
                {
                    foreach (var customerContact in result.CustomerContactDetails.Where(x => x.IsPartner == false).ToList())
                    {
                        partnerContacts.Pid = customerContact.CustomerContactId;
                        partnerContacts.FormId = customerContact.FormId;
                        _unitOfWork.customerContactDetailsService.InsertOrUpdate(_mapper.Map<CustomerContactDetail>(partnerContacts));
                        _unitOfWork.Complete();
                    }

                }
                foreach (var partnerEmploymentDetails in employmentDetailDtos.Where(x => x.IsPartner == true))
                {
                    foreach (var employment in result.EmploymentDetails.Where(x => x.IsPartner == false).ToList())
                    {
                        partnerEmploymentDetails.Pid = employment.EmpId;
                        partnerEmploymentDetails.FormId = employment.FormId;
                        _unitOfWork.employmentService.InsertOrUpdate(_mapper.Map<EmploymentDetail>(partnerEmploymentDetails));
                        _unitOfWork.Complete();
                    }

                }

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


        [HttpPost]
        public async Task<IActionResult> GenerateStrategy(int formId)
        {
            var statusCode = StatusCodes.Status200OK;
            object? value = null;
            try
            {
                var res= _unitOfWork.StrategyFormService.GenerateStrategy(formId);
                return null;
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
