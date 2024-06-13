using System;
using System.Collections.Generic;

namespace Strategies.Domain.Models;

public partial class SrGearing
{
    public string? StrategyName { get; set; }

    public bool? AgeBelow65 { get; set; }

    public bool? IncomeAbove100K { get; set; }

    public bool? NoLiabilities { get; set; }

    public string? GearingReview { get; set; }

    public string? AdditionalConditions { get; set; }

    public string? Notes { get; set; }

    public string? SrReferences { get; set; }
}
