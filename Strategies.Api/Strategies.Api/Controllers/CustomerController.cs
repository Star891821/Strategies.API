using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Strategies.Domain.Models;
using Strategies.Service.DataManager;
using Strategies.Service.Repository;

namespace Strategies.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CustomerController : GenericController<Customer>
    {
        public CustomerController(IGenericService<Customer> genericService)
            : base(genericService)
        {

        }

    }
}
