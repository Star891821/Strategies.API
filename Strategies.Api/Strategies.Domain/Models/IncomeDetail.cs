using System;
using System.Collections.Generic;

namespace Strategies.Domain.Models;

public partial class IncomeDetail
{
    public int IncomeDetailsId { get; set; }

    public int FormId { get; set; }

    public int? QuestionId { get; set; }

    public string? Description { get; set; }

    public string? Owners { get; set; }

    public string? Amounts { get; set; }

    public string? Frequency { get; set; }

    public DateTime? CreatedAt { get; set; }

    public int? CreatedBy { get; set; }

    public DateTime? ModifiedAt { get; set; }

    public int? ModifiedBy { get; set; }

    public bool? IsJoint { get; set; }

    public virtual StrategyForm Form { get; set; } = null!;

    public virtual MstQuestion? Question { get; set; }
}
