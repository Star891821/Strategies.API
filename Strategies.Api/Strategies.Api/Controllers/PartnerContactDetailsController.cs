using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Strategies.Domain.Models;
using Strategies.Service.Repository;

namespace Strategies.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PartnerContactDetailsController : GenericController<PartnerContactDetail>
    {
        public PartnerContactDetailsController(IGenericService<PartnerContactDetail> genericService)
            : base(genericService)
        {

        }
    }
}
