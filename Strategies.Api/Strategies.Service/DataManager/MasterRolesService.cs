using Strategies.Domain.Models;
using Strategies.Service.Repository;

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
