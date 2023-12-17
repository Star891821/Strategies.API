using Strategies.Domain.Models;
using Strategies.Service.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Strategies.Service.DataManager
{
    public class CashFlowRequirementService : GenericService<CashFlowRequirement>, ICashFlowRequirementService
    {

        public CashFlowRequirementService(StrategyDbContext context) : base(context) { }
        public bool Delete(int id)
        {
            throw new NotImplementedException();
        }

        public List<CashFlowRequirement>? GetAll()
        {
            using (var dbContext = new StrategyDbContext())
            {
                return dbContext.CashFlowRequirements.ToList();
            }
        }

        public CashFlowRequirement? GetById(int id)
        {
            using (var dbContext = new StrategyDbContext())
            {
                return dbContext.CashFlowRequirements.Where(c => c.CashflowId == id).FirstOrDefault();
            }
        }

        public bool InsertOrUpdate(CashFlowRequirement entity)
        {
            throw new NotImplementedException();
        }

    }
}
