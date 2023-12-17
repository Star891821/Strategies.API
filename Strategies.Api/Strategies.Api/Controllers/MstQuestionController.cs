using Microsoft.AspNetCore.Mvc;
using NLog.Fluent;
using Strategies.Api.Models.ModelsDto;
using Strategies.Service.Repository;

namespace Strategies.Api.Controllers
{
    [Route("api/[controller]/[action]")]
    [ApiController]
    public class MstQuestionController : GenericController<MstQuestionDto>
    {
        public MstQuestionController(IGenericService<MstQuestionDto> genericService)
            : base(genericService)
        {
        }
    }
}
