using System;
using System.Collections.Generic;

namespace Strategies.Domain.Models;

public partial class SrLifeInsurance
{
    public string? StrategyName { get; set; }

    public bool? AgeBelow70 { get; set; }

    public string? LifeInsuranceReview { get; set; }

    public string? AdditionalConditions { get; set; }

    public string? Notes { get; set; }

    public string? SrReferences { get; set; }
}
