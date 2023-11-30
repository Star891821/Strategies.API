using Strategies.Domain.Models;
using Strategies.Service.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Strategies.Service.DataManager
{
    public class MasterUser : IGenericService<MstUser>
    {
        public bool Delete(int id)
        {
            throw new NotImplementedException();
        }

        public List<MstUser>? GetAll()
        {
            using (var dbContext = new StrategyDbContext())
            {
                return dbContext.MstUsers.ToList();
            }
        }

        public MstUser? GetById(int id)
        {
            using (var dbContext = new StrategyDbContext())
            {
                return dbContext.MstUsers.Where(x => x.UserId == id).FirstOrDefault();
            }
        }

        public bool InsertOrUpdate(MstUser entity)
        {
            throw new NotImplementedException();
        }
    }
}
