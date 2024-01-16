namespace Strategies.Api.Models.ModelsDto
{
    public class StrategyFormDto
    {
        public int FormId { get; set; }

        public int? FormStatus { get; set; }

        public DateTime? CreatedAt { get; set; }

        public int? CreatedBy { get; set; }

        public DateTime? ModifiedAt { get; set; }

        public int? ModifiedBy { get; set; }
       

        public virtual List<CustomerDto> Customers { get; set; }

        public virtual List<CustomerContactDetailDto> CustomerContactDetails { get; set; }

        public virtual List<CashFlowRequirementDto> CashFlowRequirements { get; set; }

        public virtual List<PlannedExpenditureDto> PlannedExpenditures { get; set; }

        public virtual List<ExpectedFutureInflowDto> ExpectedFutureInflows { get; set; }

        public virtual List<EmploymentDetailDto> EmploymentDetails { get; set; }

        public virtual List<ExpenseDetailDto> ExpenseDetails { get; set; } 

        public virtual List<IncomeDetailDto> IncomeDetails { get; set; }

       

        public virtual List<LifeStyleAssetDetailDto> LifeStyleAssetDetails { get; set; }

        public virtual List<InvestmentAssetDetailDto> InvestmentAssetDetails { get; set; }

        public virtual List<LiabilitiesDetailDto> LiabilitiesDetails { get; set; }

        public virtual List<SuperAssetDetailDto> SuperAssetDetails { get; set; }

        public virtual List<InsuranceDetailDto> InsuranceDetails { get; set; }

        public virtual List<DependantsDetailDto> DependantsDetails { get; set; }

        public virtual List<EstatePlanningDto> EstatePlannings { get; set; }

        public virtual List<AssociatedStructureDto> AssociatedStructures { get; set; }

        public virtual List<ProfessionalAdvisersDetailDto> ProfessionalAdvisersDetails { get; set; }

        public virtual List<DisasquentionnaireDto> Disasquentionnaires { get; set; }
    }
}
