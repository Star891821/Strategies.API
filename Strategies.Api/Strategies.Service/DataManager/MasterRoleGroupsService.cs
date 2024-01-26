using Strategies.Domain.Models;
using Strategies.Service.Repository;

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
