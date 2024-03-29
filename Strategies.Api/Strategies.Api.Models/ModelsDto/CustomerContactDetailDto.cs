﻿namespace Strategies.Api.Models.ModelsDto
{
    public class CustomerContactDetailDto
    {
        public int CustomerContactId { get; set; }

        public int? CustomerId { get; set; }

        public string? MobileTelephone { get; set; }

        public string? WorkTelephone { get; set; }

        public string? HomeTelephone { get; set; }

        public string? EmailAddress { get; set; }

        public string? SkypeName { get; set; }

        public string? ResidentialAddress { get; set; }

        public bool? IsPostalAddressIsResidentialAddress { get; set; }

        public string? PostalAddress { get; set; }

        public string? ResidentialStateId { get; set; }

        public string? ResidentialCityId { get; set; }

        public string? ResidentialPostalCode { get; set; }

        public string? PostalStateId { get; set; }

        public string? PostalCityId { get; set; }

        public string? PostalPostalCode { get; set; }

        public DateTime? CreatedAt { get; set; }

        public int? CreatedBy { get; set; }

        public DateTime? ModifiedAt { get; set; }

        public int? ModifiedBy { get; set; }

        public int FormId { get; set; }

        public bool? IsPartner { get; set; }

        public int? Pid { get; set; }

    }
}
