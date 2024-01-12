using System;
using System.Collections.Generic;

namespace Strategies.Domain.Models;

public partial class EmploymentDetail
{
    public int EmpId { get; set; }

    public int FormId { get; set; }

    public bool? IsPartner { get; set; }

    public int? Pid { get; set; }

    public int QuestionId { get; set; }

    public string Occupation { get; set; } = null!;

    public string? NameOfEmployer { get; set; }

    public string? Notes { get; set; }

    public string? Income { get; set; }

    public DateTime? CreatedAt { get; set; }

    public int? CreatedBy { get; set; }

    public DateTime? ModifiedAt { get; set; }

    public int? ModifiedBy { get; set; }

    public virtual StrategyForm Form { get; set; } = null!;
}
