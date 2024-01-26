using Microsoft.AspNetCore.Mvc;
using Strategies.Domain.Models;
using Strategies.Service.Repository;

namespace Strategies.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CustomerContactDetailsController : GenericController<CustomerContactDetail>
    {
        public CustomerContactDetailsController(IGenericService<CustomerContactDetail> genericService)
            : base(genericService)
        {

        }
    }

}
