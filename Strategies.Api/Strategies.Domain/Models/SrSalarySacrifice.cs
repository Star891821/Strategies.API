using System;
using System.Collections.Generic;

namespace Strategies.Domain.Models;

public partial class SrSalarySacrifice
{
    public string? StrategyName { get; set; }

    public bool? SelfEmployedOrSalaried { get; set; }

    public string? SalarySacrificeReview { get; set; }

    public string? AdditionalConditions { get; set; }

    public string? Notes { get; set; }

    public string? SrReferences { get; set; }
}
