using Strategies.Domain.Models;
using Strategies.Service.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Strategies.Service.DataManager
{
    public class ExpectedFutureInflowService : GenericService<ExpectedFutureInflow>, IExpectedFutureInflowService
    {
        public ExpectedFutureInflowService(StrategyDbContext context) : base(context) { }
        public bool Delete(int id)
        {
            throw new NotImplementedException();
        }

        public List<ExpectedFutureInflow>? GetAll()
        {
            using (var dbContext = new StrategyDbContext())
            {
                return dbContext.ExpectedFutureInflows.ToList();
            }
        }

        public ExpectedFutureInflow? GetById(int id)
        {
            using (var dbContext = new StrategyDbContext())
            {
                return dbContext.ExpectedFutureInflows.Where(c => c.ExpectedFutureInflowsId == id).FirstOrDefault();
            }
        }

        public bool InsertOrUpdate(ExpectedFutureInflow entity)
        {
            throw new NotImplementedException();
        }
    }
}
