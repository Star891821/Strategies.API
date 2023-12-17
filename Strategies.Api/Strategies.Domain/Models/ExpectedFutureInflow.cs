using System;
using System.Collections.Generic;

namespace Strategies.Domain.Models;

public partial class ExpectedFutureInflow
{
    public int ExpectedFutureInflowsId { get; set; }

    public string Description { get; set; } = null!;

    public int FormId { get; set; }

    public int? PartnerId { get; set; }

    public int? CustomerId { get; set; }

    public string Amount { get; set; } = null!;

    public DateTime Date { get; set; }

    public DateTime? CreatedAt { get; set; }

    public int? CreatedBy { get; set; }

    public DateTime? ModifiedAt { get; set; }

    public int? ModifiedBy { get; set; }

    public virtual StrategyForm Form { get; set; } = null!;
}
