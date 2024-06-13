using System;
using System.Collections.Generic;

namespace Strategies.Domain.Models;

public partial class SrWill
{
    public string? StrategyName { get; set; }

    public bool? HasWill { get; set; }

    public string? WillReview { get; set; }

    public string? AdditionalConditions { get; set; }

    public string? Notes { get; set; }

    public string? SrReferences { get; set; }
}
