﻿using System;
using System.Collections.Generic;

namespace Strategies.Domain.Models;

public partial class DependantsDetail
{
    public int DependantsDetailsId { get; set; }

    public int FormId { get; set; }

    public string? Owners { get; set; }

    public string? DependantsDetailsName { get; set; }

    public DateTime? DependantsDetailsDob { get; set; }

    public int? DependantsDetailsAge { get; set; }

    public string? DependantsDetailsGender { get; set; }

    public string? DependantsDetailsRelationship { get; set; }

    public string? DependantsDetailsFundingForPrivateSchool { get; set; }

    public int? DependantsDetailsNumberOfYears { get; set; }

    public string? DependantsDetailsWhichSchools { get; set; }

    public string? DependantsDetailsCurGradeOrPrepYear { get; set; }

    public int? DependantsDetailsSupportAge { get; set; }

    public string? DependantsDetailsAdditionalInfo { get; set; }

    public DateTime? CreatedAt { get; set; }

    public int? CreatedBy { get; set; }

    public DateTime? ModifiedAt { get; set; }

    public int? ModifiedBy { get; set; }

    public virtual StrategyForm Form { get; set; } = null!;
}