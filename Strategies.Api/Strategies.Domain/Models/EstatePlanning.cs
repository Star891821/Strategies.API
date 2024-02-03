using System;
using System.Collections.Generic;

namespace Strategies.Domain.Models;

public partial class EstatePlanning
{
    public int EstatePlanningId { get; set; }

    public int FormId { get; set; }

    public string? Owners { get; set; }

    public bool? WillExists { get; set; }

    public bool? IsWillCurrent { get; set; }

    public DateTime? DateOfWill { get; set; }

    public string? WillLocation { get; set; }

    public string? LastReviewed { get; set; }

    public bool? FuneralPlan { get; set; }

    public bool? TestamentaryTrust { get; set; }

    public string? PowerAttorney { get; set; }

    public string? ExecutorOfWill { get; set; }

    public string? BeneficiaryOfYourEstate { get; set; }

    public bool? HaveYouAppointedAnEnduringGuardian { get; set; }

    public DateTime? DateGuardianshipCompleted { get; set; }

    public string? EnduringGuardianName { get; set; }

    public bool? AdvanceCareDirective { get; set; }

    public string? Notes { get; set; }

    public DateTime? CreatedAt { get; set; }

    public int? CreatedBy { get; set; }

    public DateTime? ModifiedAt { get; set; }

    public int? ModifiedBy { get; set; }

    public bool? IsJoint { get; set; }

    public virtual StrategyForm Form { get; set; } = null!;
}
