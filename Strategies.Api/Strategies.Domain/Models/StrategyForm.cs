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

    public virtual ICollection<CashFlowRequirement> CashFlowRequirements { get; set; } = new List<CashFlowRequirement>();

    public virtual ICollection<CustomerContactDetail> CustomerContactDetails { get; set; } = new List<CustomerContactDetail>();

    public virtual ICollection<Customer> Customers { get; set; } = new List<Customer>();

    public virtual ICollection<EmploymentDetail> EmploymentDetails { get; set; } = new List<EmploymentDetail>();

    public virtual ICollection<ExpectedFutureInflow> ExpectedFutureInflows { get; set; } = new List<ExpectedFutureInflow>();

    public virtual ICollection<ExpenseDetail> ExpenseDetails { get; set; } = new List<ExpenseDetail>();

    public virtual ICollection<IncomeDetail> IncomeDetails { get; set; } = new List<IncomeDetail>();

    public virtual ICollection<PlannedExpenditure> PlannedExpenditures { get; set; } = new List<PlannedExpenditure>();
}
