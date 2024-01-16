using Microsoft.EntityFrameworkCore;
using Strategies.Domain.Models;
using Strategies.Service.Interfaces;

namespace Strategies.Service.DataManager
{
    public class ExpenseDetailsService : GenericService<ExpenseDetail>, IExpenseDetailsService
    {
        public ExpenseDetailsService(StrategyDbContext context) : base(context) { }
        public bool Delete(int id)
        {
            throw new NotImplementedException();
        }

        public List<ExpenseDetail>? GetAll()
        {
            using (var dbContext = new StrategyDbContext())
            {
                return dbContext.ExpenseDetails.ToList();
            }
        }

        public ExpenseDetail? GetById(int id)
        {
            using (var dbContext = new StrategyDbContext())
            {
                return dbContext.ExpenseDetails.Where(c => c.ExpenseDetailsId == id).FirstOrDefault();
            }
        }

        public bool InsertOrUpdate(ExpenseDetail entity)
        {
            try
            {
                var exist = GetById(entity.ExpenseDetailsId);


                if (exist != null)
                {
                    ExpenseDetail existingEntity = context.Set<ExpenseDetail>().Local.FirstOrDefault(e => e.ExpenseDetailsId == entity.ExpenseDetailsId);

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
            return true;

        }
    }
}
