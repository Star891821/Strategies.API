using Microsoft.EntityFrameworkCore;
using Strategies.Domain.Models;
using Strategies.Service.Interfaces;
using Strategies.Service.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Strategies.Service.DataManager
{
    public class CustomerContactDetailsService : GenericService<CustomerContactDetail>, ICustomerContactDetailsService
    {
        public CustomerContactDetailsService(StrategyDbContext context) : base(context) { }
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
            try
            {
                var exist = GetById(entity.CustomerContactId);


                if (exist != null)
                {
                    CustomerContactDetail existingEntity = context.Set<CustomerContactDetail>().Local.FirstOrDefault(e => e.CustomerContactId == entity.CustomerContactId);

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
