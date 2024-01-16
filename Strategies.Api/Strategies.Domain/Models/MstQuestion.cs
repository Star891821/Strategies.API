using System;
using System.Collections.Generic;

namespace Strategies.Domain.Models;

public partial class MstQuestion
{
    public int QuestionId { get; set; }

    public string QuestionDescription { get; set; } = null!;

    public string SectionName { get; set; } = null!;

    public int ActiveYn { get; set; }

    public DateTime? CreatedAt { get; set; }

    public int? CreatedBy { get; set; }

    public DateTime? ModifiedAt { get; set; }

    public int? ModifiedBy { get; set; }

    public virtual ICollection<ExpenseDetail> ExpenseDetails { get; set; } = new List<ExpenseDetail>();

    public virtual ICollection<IncomeDetail> IncomeDetails { get; set; } = new List<IncomeDetail>();

    public virtual ICollection<PlannedExpenditure> PlannedExpenditures { get; set; } = new List<PlannedExpenditure>();
}
