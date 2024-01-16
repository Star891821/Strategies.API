using System;
using System.Collections.Generic;

namespace Strategies.Domain.Models;

public partial class StrategyForm
{
    public int FormId { get; set; }

    public int? FormStatus { get; set; }

    public DateTime? CreatedAt { get; set; }

    public int? CreatedBy { get; set; }

    public DateTime? ModifiedAt { get; set; }

    public int? ModifiedBy { get; set; }

    public virtual ICollection<AssociatedStructure> AssociatedStructures { get; set; } = new List<AssociatedStructure>();

    public virtual ICollection<CashFlowRequirement> CashFlowRequirements { get; set; } = new List<CashFlowRequirement>();

    public virtual ICollection<CustomerContactDetail> CustomerContactDetails { get; set; } = new List<CustomerContactDetail>();

    public virtual ICollection<Customer> Customers { get; set; } = new List<Customer>();

    public virtual ICollection<DependantsDetail> DependantsDetails { get; set; } = new List<DependantsDetail>();

    public virtual ICollection<Disasquentionnaire> Disasquentionnaires { get; set; } = new List<Disasquentionnaire>();

    public virtual ICollection<EmploymentDetail> EmploymentDetails { get; set; } = new List<EmploymentDetail>();

    public virtual ICollection<EstatePlanning> EstatePlannings { get; set; } = new List<EstatePlanning>();

    public virtual ICollection<ExpectedFutureInflow> ExpectedFutureInflows { get; set; } = new List<ExpectedFutureInflow>();

    public virtual ICollection<ExpenseDetail> ExpenseDetails { get; set; } = new List<ExpenseDetail>();

    public virtual ICollection<IncomeDetail> IncomeDetails { get; set; } = new List<IncomeDetail>();

    public virtual ICollection<InsuranceDetail> InsuranceDetails { get; set; } = new List<InsuranceDetail>();

    public virtual ICollection<InvestmentAssetDetail> InvestmentAssetDetails { get; set; } = new List<InvestmentAssetDetail>();

    public virtual ICollection<LiabilitiesDetail> LiabilitiesDetails { get; set; } = new List<LiabilitiesDetail>();

    public virtual ICollection<LifeStyleAssetDetail> LifeStyleAssetDetails { get; set; } = new List<LifeStyleAssetDetail>();

    public virtual ICollection<PlannedExpenditure> PlannedExpenditures { get; set; } = new List<PlannedExpenditure>();

    public virtual ICollection<ProfessionalAdvisersDetail> ProfessionalAdvisersDetails { get; set; } = new List<ProfessionalAdvisersDetail>();

    public virtual ICollection<SuperAssetDetail> SuperAssetDetails { get; set; } = new List<SuperAssetDetail>();
}
