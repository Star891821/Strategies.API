using System;
using System.Collections.Generic;

namespace Strategies.Domain.Models;

public partial class SrIncomeProtectionInsurance
{
    public string? StrategyName { get; set; }

    public bool? AgeBelow60 { get; set; }

    public string? IncomeProtectionReview { get; set; }

    public string? AdditionalConditions { get; set; }

    public string? Notes { get; set; }

    public string? SrReferences { get; set; }
}
