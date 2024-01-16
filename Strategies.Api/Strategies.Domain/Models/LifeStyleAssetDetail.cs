using System;
using System.Collections.Generic;

namespace Strategies.Domain.Models;

public partial class LifeStyleAssetDetail
{
    public int LifeStyleAssetDetailsId { get; set; }

    public int FormId { get; set; }

    public string? Owners { get; set; }

    public string? Descriptions { get; set; }

    public string? CurrentBalance { get; set; }

    public DateTime? CreatedAt { get; set; }

    public int? CreatedBy { get; set; }

    public DateTime? ModifiedAt { get; set; }

    public int? ModifiedBy { get; set; }

    public virtual StrategyForm Form { get; set; } = null!;
}
