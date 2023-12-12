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
                return dbContext.Customers.Where(c=>c.CustomerId == id).FirstOrDefault();
            }
        }

        public bool InsertOrUpdate(Customer entity)
        {
            throw new NotImplementedException();
        }
    }
}
