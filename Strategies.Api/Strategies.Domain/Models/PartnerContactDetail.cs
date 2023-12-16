using System;
using System.Collections.Generic;

namespace Strategies.Domain.Models;

public partial class PartnerContactDetail
{
    public int PartnerContactId { get; set; }

    public int PartnerId { get; set; }

    public int CustomerId { get; set; }

    public string? MobileTelephone { get; set; }

    public string? WorkTelephone { get; set; }

    public string? HomeTelephone { get; set; }

    public string? EmailAddress { get; set; }

    public string? SkypeName { get; set; }

    public string? ResidentialAddress { get; set; }

    public bool? IsPostalAddressIsResidentialAddress { get; set; }

    public string? PostalAddress { get; set; }

    public int? ResidentialStateId { get; set; }

    public int? ResidentialCityId { get; set; }

    public string? ResidentialPostalCode { get; set; }

    public int? PostalStateId { get; set; }

    public int? PostalCityId { get; set; }

    public string? PostalPostalCode { get; set; }

    public DateTime? CreatedAt { get; set; }

    public int? CreatedBy { get; set; }

    public DateTime? ModifiedAt { get; set; }

    public int? ModifiedBy { get; set; }

    public int FormId { get; set; }

    public virtual StrategyForm Form { get; set; } = null!;
}
