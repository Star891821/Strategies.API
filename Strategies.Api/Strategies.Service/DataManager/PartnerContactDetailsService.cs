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
    public class PartnerContactDetailsService : GenericService<PartnerContactDetail>, IPartnerContactDetailsService
    {
        public PartnerContactDetailsService(StrategyDbContext context) : base(context) { }
        public bool Delete(int id)
        {
            throw new NotImplementedException();
        }

        public List<PartnerContactDetail>? GetAll()
        {
            throw new NotImplementedException();
        }

        public PartnerContactDetail? GetById(int id)
        {
            throw new NotImplementedException();
        }

        public bool InsertOrUpdate(PartnerContactDetail entity)
        {
            throw new NotImplementedException();
        }
    }
}
