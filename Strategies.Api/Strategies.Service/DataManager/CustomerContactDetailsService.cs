using Strategies.Domain.Models;
using Strategies.Service.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Strategies.Service.DataManager
{
    public class CustomerContactDetailsService : IGenericService<CustomerContactDetail>
    {
        public bool Delete(int id)
        {
            throw new NotImplementedException();
        }

        public List<CustomerContactDetail>? GetAll()
        {
            using (var dbContext = new StrategyDbContext())
            {
                return dbContext.CustomerContactDetails.ToList();
            }
        }

        public CustomerContactDetail? GetById(int id)
        {
            using (var dbContext = new StrategyDbContext())
            {
                return dbContext.CustomerContactDetails.Where(c=>c.CustomerContactId == id).FirstOrDefault();
            }
        }

        public bool InsertOrUpdate(CustomerContactDetail entity)
        {
            throw new NotImplementedException();
        }
    }
}
