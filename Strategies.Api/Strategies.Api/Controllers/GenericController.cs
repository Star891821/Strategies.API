using Microsoft.AspNetCore.Mvc;
using Strategies.Service.Repository;

namespace Strategies.Api.Controllers
{
    public class GenericController<T> : Controller where T : class
    {
        private IGenericService<T> service;
        public GenericController(IGenericService<T> service)
        {
            this.service = service;        
        }
        [HttpGet]
        public IActionResult? GetAll()
        {
            var statusCode = StatusCodes.Status200OK;
            object? value = null;
            try
            {
                var items = service.GetAll();
                if (items == null)
                {
                    statusCode = StatusCodes.Status404NotFound;
                    value = "GetAll data is not found";
                }
                else
                {
                    value = items;
                }
            }
            catch (Exception ex)
            {
                statusCode = StatusCodes.Status500InternalServerError;
                value = ex.Message;
            }
            return StatusCode(statusCode, value);
        }

        [HttpGet("{id}")]
        public IActionResult? GetById(int id)
        {
            var statusCode = StatusCodes.Status200OK;
            object? value = null;
            try
            {
                 var items = service.GetById(id);
                if (items == null)
                {
                    statusCode = StatusCodes.Status404NotFound;
                    value = "GetById data is not found";
                }
                else
                {
                    value = items;
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
    }
}
