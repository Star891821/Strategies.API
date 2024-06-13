using System;
using System.Collections.Generic;

namespace Strategies.Domain.Models;

public partial class SrBusinessInsurance
{
    public string? StrategyName { get; set; }

    public bool? SelfEmployed { get; set; }

    public bool? OwnCompany { get; set; }

    public string? BusinessInsuranceReview { get; set; }

    public string? AdditionalConditions { get; set; }

    public string? Notes { get; set; }

    public string? SrReferences { get; set; }
}
