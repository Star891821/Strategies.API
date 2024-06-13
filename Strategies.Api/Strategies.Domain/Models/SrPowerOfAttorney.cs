using System;
using System.Collections.Generic;

namespace Strategies.Domain.Models;

public partial class SrPowerOfAttorney
{
    public string? StrategyName { get; set; }

    public bool? HasPowerOfAttorney { get; set; }

    public string? PowerOfAttorneyReview { get; set; }

    public string? AdditionalConditions { get; set; }

    public string? Notes { get; set; }

    public string? SrReferences { get; set; }
}
