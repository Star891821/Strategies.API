using System;
using System.Collections.Generic;

namespace Strategies.Domain.Models;

public partial class AssociatedStructure
{
    public int AssociatedStructuresId { get; set; }

    public int FormId { get; set; }

    public string? Owners { get; set; }

    public string? DescriptionType { get; set; }

    public string? AssociatedStructuresDetails { get; set; }

    public DateTime? CreatedAt { get; set; }

    public int? CreatedBy { get; set; }

    public DateTime? ModifiedAt { get; set; }

    public int? ModifiedBy { get; set; }

    public virtual StrategyForm Form { get; set; } = null!;
}
