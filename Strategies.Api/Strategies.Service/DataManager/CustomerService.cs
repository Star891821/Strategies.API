using Strategies.Domain.Models;
using Strategies.Service.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Strategies.Service.DataManager
{
    public class CustomerService : IGenericService<Customer>
    {
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
