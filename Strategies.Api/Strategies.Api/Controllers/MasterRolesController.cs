using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Strategies.Domain.Models;
using Strategies.Service.Repository;

namespace Strategies.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class MasterRolesController : GenericController<MstUserRole>
    {
        public MasterRolesController(IGenericService<MstUserRole> genericService)
            : base(genericService)
        {

        }

    }
}
