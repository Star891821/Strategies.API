using Strategies.Domain.Models;
using Strategies.Service.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Strategies.Service.DataManager
{
    public class PlannedExpenditureService : GenericService<PlannedExpenditure>, IPlannedExpenditureService
    {
        public PlannedExpenditureService(StrategyDbContext context) : base(context) { }
        public bool Delete(int id)
        {
            throw new NotImplementedException();
        }

        public List<PlannedExpenditure>? GetAll()
        {
            using (var dbContext = new StrategyDbContext())
            {
                return dbContext.PlannedExpenditures.ToList();
            }
        }

        public PlannedExpenditure? GetById(int id)
        {
            using (var dbContext = new StrategyDbContext())
            {
                return dbContext.PlannedExpenditures.Where(c => c.PlannedExpenditureId == id).FirstOrDefault();
            }
        }

        public bool InsertOrUpdate(PlannedExpenditure entity)
        {
            throw new NotImplementedException();
        }
    }
}
