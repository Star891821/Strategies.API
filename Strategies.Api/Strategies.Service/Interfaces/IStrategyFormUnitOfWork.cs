using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Strategies.Service.Interfaces
{
    public interface IStrategyFormUnitOfWork : IDisposable
    {
        IPartnerContactDetailsService PartnerContactDetailsService { get; }
        IPartnerService PartnerService { get; }
        ICustomerContactDetailsService customerContactDetailsService { get; }
        ICustomerService customerService { get; }
        IStrategyFormService StrategyFormService { get; }

        ///  void RemoveNullableEntitiesFromDb();
        //   void RemoveEntitiesById(int id);
        Task CompleteAsync();
        void BeginTransaction();
        void CommitTransaction();
        void RollBack();
        bool Complete();
    }
}
