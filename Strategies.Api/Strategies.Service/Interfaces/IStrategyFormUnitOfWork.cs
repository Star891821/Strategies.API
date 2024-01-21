namespace Strategies.Service.Interfaces
{
    public interface IStrategyFormUnitOfWork : IDisposable
    {
        ICashFlowRequirementService cashFlowRequirementService { get; }
        IExpectedFutureInflowService expectedFutureInflowService { get; }
        IPlannedExpenditureService  PlannedExpenditureService { get; }
        ICustomerContactDetailsService customerContactDetailsService { get; }
        ICustomerService customerService { get; }
        IEmploymentService employmentService { get; }
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
