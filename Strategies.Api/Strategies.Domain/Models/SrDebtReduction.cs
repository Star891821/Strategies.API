using System;
using System.Collections.Generic;

namespace Strategies.Domain.Models;

public partial class SrDebtReduction
{
    public string? StrategyName { get; set; }

    public bool? LiquidAssetsAboveCashReserve { get; set; }

    public bool? ExcessCashFlow { get; set; }

    public bool? HasDebts { get; set; }

    public string? DebtReductionReview { get; set; }

    public string? AdditionalConditions { get; set; }

    public string? Notes { get; set; }

    public string? SrReferences { get; set; }
}
