using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Strategies.Domain.Models;
using Strategies.Service.Repository;

namespace Strategies.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class MasterUserController : GenericController<MstUser>
    {
        public MasterUserController(IGenericService<MstUser> genericService)
            : base(genericService)
        {

        }
    }
}
