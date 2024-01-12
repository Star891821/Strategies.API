using AutoMapper;
using Microsoft.AspNetCore.Mvc;
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
        [HttpPost]
        public async Task<IActionResult> InsertOrUpdate(StrategyFormDto strategyFormDto)
        {
            var statusCode = StatusCodes.Status200OK;
            object? value = null;
            try
            {
                List<CustomerDto> customers = strategyFormDto.Customers;
                List<CustomerContactDetailDto> customerContactDetailDtos = strategyFormDto.CustomerContactDetails;
                StrategyFormDto test = strategyFormDto;
                test.Customers = strategyFormDto.Customers.Where(x => x.IsPartner == false).ToList();
                test.CustomerContactDetails = strategyFormDto.CustomerContactDetails.Where(x => x.IsPartner == false).ToList();
                _unitOfWork.BeginTransaction();
                var result = _mapper.Map<StrategyForm>(test);
                await _unitOfWork.StrategyFormService.InsertOrUpdate(result);
                await _unitOfWork.CompleteAsync();
                foreach (var partner in customers.Where(x=>x.IsPartner == true))
                {
                    partner.Pid = result.Customers.First().CustomerId;
                    partner.FormId = result.Customers.First().FormId;
                    _unitOfWork.customerService.InsertOrUpdate(_mapper.Map<Customer>(partner));
                   await _unitOfWork.CompleteAsync();
                }
                foreach (var partnerContacts in customerContactDetailDtos.Where(x => x.IsPartner == true))
                {
                    partnerContacts.Pid = result.CustomerContactDetails.First().CustomerContactId;
                    partnerContacts.CustomerId = result.Customers.First().CustomerId;
                    partnerContacts.FormId = result.Customers.First().FormId;
                    _unitOfWork.customerContactDetailsService.InsertOrUpdate(_mapper.Map<CustomerContactDetail>(partnerContacts));
                    await _unitOfWork.CompleteAsync();
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
    }
}
