using System;
using System.Collections.Generic;

namespace Strategies.Domain.Models;

public partial class Disasquentionnaire
{
    public int DisasqId { get; set; }

    public int FormId { get; set; }

    public string? DisasqQuestion { get; set; }

    public string? DisasqAnswer { get; set; }

    public DateTime? CreatedAt { get; set; }

    public int? CreatedBy { get; set; }

    public DateTime? ModifiedAt { get; set; }

    public int? ModifiedBy { get; set; }

    public virtual StrategyForm Form { get; set; } = null!;
}
