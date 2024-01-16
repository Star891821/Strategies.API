using System;
using System.Collections.Generic;

namespace Strategies.Domain.Models;

public partial class SuperAssetDetail
{
    public int SuperAssetDetailsId { get; set; }

    public int FormId { get; set; }

    public string? Owners { get; set; }

    public int SuperassetType { get; set; }

    public string? Contributions { get; set; }

    public string? FundBalance { get; set; }

    public DateTime? CreatedAt { get; set; }

    public int? CreatedBy { get; set; }

    public DateTime? ModifiedAt { get; set; }

    public int? ModifiedBy { get; set; }

    public virtual StrategyForm Form { get; set; } = null!;
}
