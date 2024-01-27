using Microsoft.EntityFrameworkCore;
using Strategies.Domain.Models;
using Strategies.Service.Interfaces;

namespace Strategies.Service.DataManager
{
    public class CustomerService : GenericService<Customer>, ICustomerService
    {
        public CustomerService(StrategyDbContext context) : base(context) { }
        public bool Delete(int id)
        {
            throw new NotImplementedException();
        }

        public List<Customer>? GetAll()
        {
            using (var dbContext = new StrategyDbContext())
            {
                return dbContext.Customers.ToList();
            }
        }

        public Customer? GetById(int id)
        {
            using (var dbContext = new StrategyDbContext())
            {
                return dbContext.Customers.Where(c => c.CustomerId == id).FirstOrDefault();
            }
        }

        public bool InsertOrUpdate(Customer entity)
        {
            try
            {
                var exist = GetById(entity.CustomerId);


                if (exist != null)
                {
                    Customer existingEntity = context.Set<Customer>().Local.FirstOrDefault(e => e.CustomerId == entity.CustomerId);

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
                    //if (entity.CustomerId > 0)
                    //{
                    //    entity.CustomerId = 0;
                    //}
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
