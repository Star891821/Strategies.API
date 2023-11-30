using System;
using System.Collections.Generic;

namespace Strategies.Domain.Models;

public partial class Partner
{
    public int PartnerId { get; set; }

    public int CustomerId { get; set; }

    public string Title { get; set; } = null!;

    public string FirstName { get; set; } = null!;

    public string MiddleName { get; set; } = null!;

    public string Surname { get; set; } = null!;

    public string? PreferredName { get; set; }

    public DateTime Dob { get; set; }

    public string? Gender { get; set; }

    public string? TaxResident { get; set; }

    public string? MaritalStatus { get; set; }

    public string? HealthStatus { get; set; }

    public int? RetirementAge { get; set; }

    public DateTime? CreatedAt { get; set; }

    public int? CreatedBy { get; set; }

    public DateTime? ModifiedAt { get; set; }

    public int? ModifiedBy { get; set; }

    public DateTime? LastloginAt { get; set; }

    public virtual Customer Customer { get; set; } = null!;
}
