using System;
using System.Collections.Generic;

namespace Strategies.Domain.Models;

public partial class WillDetail
{
    public int WillId { get; set; }

    public int FormId { get; set; }

    public string? Owners { get; set; }

    public string? IsWillCurrent { get; set; }

    public DateTime? DateOfWill { get; set; }

    public string? WillLocation { get; set; }

    public string? ExecutorOfWill { get; set; }

    public string? BeneficiaryOfYourEstate { get; set; }

    public DateTime? CreatedAt { get; set; }

    public int? CreatedBy { get; set; }

    public DateTime? ModifiedAt { get; set; }

    public int? ModifiedBy { get; set; }

    public virtual StrategyForm Form { get; set; } = null!;
}
