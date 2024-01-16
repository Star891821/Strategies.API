using System;
using System.Collections.Generic;

namespace Strategies.Domain.Models;

public partial class LiabilitiesDetail
{
    public int LiabilitiesDetailsId { get; set; }

    public int FormId { get; set; }

    public string? Owners { get; set; }

    public string? LiabilityType { get; set; }

    public string? RepaymentFrequence { get; set; }

    public string? InterestRate { get; set; }

    public string? OutstandingBalance { get; set; }

    public DateTime? CreatedAt { get; set; }

    public int? CreatedBy { get; set; }

    public DateTime? ModifiedAt { get; set; }

    public int? ModifiedBy { get; set; }

    public virtual StrategyForm Form { get; set; } = null!;
}
