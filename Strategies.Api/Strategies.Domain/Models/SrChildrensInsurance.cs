using System;
using System.Collections.Generic;

namespace Strategies.Domain.Models;

public partial class SrChildrensInsurance
{
    public string? StrategyName { get; set; }

    public bool? HaveChildren { get; set; }

    public bool? ChildrenBelow32 { get; set; }

    public string? ChildrensInsuranceReview { get; set; }

    public string? AdditionalConditions { get; set; }

    public string? Notes { get; set; }

    public string? SrReferences { get; set; }
}
