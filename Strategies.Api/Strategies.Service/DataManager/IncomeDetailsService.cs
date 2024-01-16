using Microsoft.EntityFrameworkCore;
using Strategies.Domain.Models;
using Strategies.Service.Interfaces;

namespace Strategies.Service.DataManager
{
    public class IncomeDetailsService : GenericService<IncomeDetail>, IIncomeDetailsService
    {
        public IncomeDetailsService(StrategyDbContext context) : base(context) { }
        public bool Delete(int id)
        {
            throw new NotImplementedException();
        }

        public List<IncomeDetail>? GetAll()
        {
            using (var dbContext = new StrategyDbContext())
            {
                return dbContext.IncomeDetails.ToList();
            }
        }

        public IncomeDetail? GetById(int id)
        {
            using (var dbContext = new StrategyDbContext())
            {
                return dbContext.IncomeDetails.Where(c => c.IncomeDetailsId == id).FirstOrDefault();
            }
        }

        public bool InsertOrUpdate(IncomeDetail entity)
        {
            try
            {
                var exist = GetById(entity.IncomeDetailsId);


                if (exist != null)
                {
                    IncomeDetail existingEntity = context.Set<IncomeDetail>().Local.FirstOrDefault(e => e.IncomeDetailsId == entity.IncomeDetailsId);

                    if (existingEntity == null)
                    {
                        context.Entry(entity).State = EntityState.Modified;
                    }
                    else
                    {
                        context.Entry(existingEntity).CurrentValues.SetValues(entity);

                    }
                }
                else
                {
                    base.InsertOrUpdate(entity);
                }

                return true;
            }
            catch (Exception ex)
            {
                // Log or handle the specific exception
                return false;
            }

        }
    }
}
