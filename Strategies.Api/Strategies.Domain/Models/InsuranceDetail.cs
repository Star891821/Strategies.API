using System;
using System.Collections.Generic;

namespace Strategies.Domain.Models;

public partial class InsuranceDetail
{
    public int InsuranceId { get; set; }

    public int FormId { get; set; }

    public string? Owners { get; set; }

    public int InsurerType { get; set; }

    public string PremiumAmount { get; set; } = null!;

    public string PremiumType { get; set; } = null!;

    public string Super { get; set; } = null!;

    public string? Comments { get; set; }

    public DateTime? CreatedAt { get; set; }

    public int? CreatedBy { get; set; }

    public DateTime? ModifiedAt { get; set; }

    public int? ModifiedBy { get; set; }

    public bool? IsJoint { get; set; }

    public string? SumInsured { get; set; }

    public string? PremiumFrequency { get; set; }

    public string? BenefitPeriod { get; set; }

    public string? WaitingPeriod { get; set; }

    public string? OtherDescription { get; set; }

    public virtual StrategyForm Form { get; set; } = null!;
}
