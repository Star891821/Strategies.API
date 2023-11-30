using Strategies.Domain.Models;
using Strategies.Service.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Strategies.Service.DataManager
{
    public class MasterRoleGroupsService : IGenericService<MstRoleGroup>
    {
        public bool Delete(int id)
        {
            throw new NotImplementedException();
        }

        public List<MstRoleGroup>? GetAll()
        {
            using(var dbContext=new StrategyDbContext())
            {
                return dbContext.MstRoleGroups.ToList();
            }
        }

        public MstRoleGroup? GetById(int id)
        {
            using (var dbContext = new StrategyDbContext())
            {
                return dbContext.MstRoleGroups.Where(x=>x.RolegroupId == id).FirstOrDefault();
            }
        }

        public bool InsertOrUpdate(MstRoleGroup entity)
        {
            throw new NotImplementedException();
        }
    }
}
