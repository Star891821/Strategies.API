using System;
using System.Collections.Generic;

namespace Strategies.Domain.Models;

public partial class PlannedExpenditure
{
    public int PlannedExpenditureId { get; set; }

    public string? Description { get; set; }

    public int FormId { get; set; }

    public int? CustomerId { get; set; }

    public string Amount { get; set; } = null!;

    public DateTime Date { get; set; }

    public DateTime? CreatedAt { get; set; }

    public int? CreatedBy { get; set; }

    public DateTime? ModifiedAt { get; set; }

    public int? ModifiedBy { get; set; }

    public int? QuestionId { get; set; }

    public virtual StrategyForm Form { get; set; } = null!;

    public virtual MstQuestion? Question { get; set; }
}
