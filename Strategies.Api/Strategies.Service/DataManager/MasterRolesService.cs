using Strategies.Domain.Models;
using Strategies.Service.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Strategies.Service.DataManager
{
    public class MasterRolesService : IGenericService<MstUserRole>
    {
        public bool Delete(int id)
        {
            throw new NotImplementedException();
        }

        public List<MstUserRole>? GetAll()
        {
            using (var dbContext = new StrategyDbContext())
            {
                return dbContext.MstUserRoles.ToList();
            }
        }

        public MstUserRole? GetById(int id)
        {
            using (var dbContext = new StrategyDbContext())
            {
                return dbContext.MstUserRoles.Where(x=>x.RoleId == id).FirstOrDefault();
            }
        }

        public bool InsertOrUpdate(MstUserRole entity)
        {
            throw new NotImplementedException();
        }
    }
}
