using System;
using System.Collections.Generic;

namespace Strategies.Domain.Models;

public partial class SrDebtRestructuring
{
    public string? StrategyName { get; set; }

    public bool? AgeBelow65 { get; set; }

    public bool? HasNonDeductibleLiabilities { get; set; }

    public string? DebtRestructuringReview { get; set; }

    public string? AdditionalConditions { get; set; }

    public string? Notes { get; set; }

    public string? SrReferences { get; set; }
}
