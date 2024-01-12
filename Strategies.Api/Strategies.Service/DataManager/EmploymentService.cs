using Microsoft.EntityFrameworkCore;
using Strategies.Domain.Models;
using Strategies.Service.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Strategies.Service.DataManager
{
    public class EmploymentService : GenericService<EmploymentDetail>, IEmploymentService
    {
        public EmploymentService(StrategyDbContext context) : base(context) { }
        public bool Delete(int id)
        {
            throw new NotImplementedException();
        }

        public List<EmploymentDetail>? GetAll()
        {
            using (var dbContext = new StrategyDbContext())
            {
                return dbContext.EmploymentDetails.ToList();
            }
        }

        public EmploymentDetail? GetById(int id)
        {
            using (var dbContext = new StrategyDbContext())
            {
                return dbContext.EmploymentDetails.Where(c => c.EmpId == id).FirstOrDefault();
            }
        }

        public bool InsertOrUpdate(EmploymentDetail entity)
        {
            try
            {
                var exist = GetById(entity.EmpId);


                if (exist != null)
                {
                    EmploymentDetail existingEntity = context.Set<EmploymentDetail>().Local.FirstOrDefault(e => e.EmpId == entity.EmpId);

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
