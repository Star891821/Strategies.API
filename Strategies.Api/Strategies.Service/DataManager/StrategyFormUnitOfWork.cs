using AutoMapper;
using Strategies.Domain.Models;
using Strategies.Service.Interfaces;

namespace Strategies.Service.DataManager
{
    public class StrategyFormUnitOfWork : IStrategyFormUnitOfWork
    {
        #region Private Declarations
        private readonly StrategyDbContext strategyDbContext;
        private readonly IMapper mapper;
        #endregion

       public ICustomerContactDetailsService customerContactDetailsService { get; private set; }
       public ICustomerService customerService { get; private set; }
        public IStrategyFormService StrategyFormService { get; private set; }

        public ICashFlowRequirementService cashFlowRequirementService { get; private set; }

        public IExpectedFutureInflowService expectedFutureInflowService { get; private set; }

        public IPlannedExpenditureService PlannedExpenditureService { get; private set; }

        public IEmploymentService employmentService { get; private set; }

        public StrategyFormUnitOfWork(StrategyDbContext strategyDbContext, IMapper mapper)
        {
            this.strategyDbContext = strategyDbContext;
            this.mapper = mapper;
            customerContactDetailsService = new CustomerContactDetailsService(strategyDbContext);
            customerService = new CustomerService(strategyDbContext);
           // PartnerService = new PartnerService(strategyDbContext);
          //  PartnerContactDetailsService = new PartnerContactDetailsService(strategyDbContext);
            cashFlowRequirementService = new CashFlowRequirementService(strategyDbContext);
            expectedFutureInflowService = new ExpectedFutureInflowService(strategyDbContext);
            PlannedExpenditureService = new PlannedExpenditureService(strategyDbContext);
            employmentService = new EmploymentService(strategyDbContext);
            StrategyFormService = new StrategyFormService(strategyDbContext);
        }
        public void Dispose()
        {
            strategyDbContext.Dispose();
        }

        public void BeginTransaction()
        {
            strategyDbContext.Database.BeginTransaction();
        }
        public void CommitTransaction()
        {
            strategyDbContext.Database.CommitTransaction();
        }

        public void RollBack()
        {
            strategyDbContext.Database.RollbackTransaction();
        }
        public async Task<bool> SaveChangesAsync()
        {
            return await strategyDbContext.SaveChangesAsync() > 0;
        }
        public Task CompleteAsync()
        {
            return strategyDbContext.SaveChangesAsync();
        }

        public bool Complete()
        {
            return strategyDbContext.SaveChanges() > 0;
        }
    }
}
