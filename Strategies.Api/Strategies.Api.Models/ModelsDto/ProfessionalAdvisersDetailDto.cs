namespace Strategies.Api.Models.ModelsDto
{
    public class ProfessionalAdvisersDetailDto
    {
        public int ProfessionalAdvisersDetailsId { get; set; }

        public int FormId { get; set; }

        public string? Owners { get; set; }

        public bool? IsJoint { get; set; }

        public string? ProfessionalAdvisersDetailsType { get; set; }

        public string? ProfessionalAdvisersDetailsName { get; set; }

        public string? ProfessionalAdvisersDetailsBusinessName { get; set; }

        public string? WorkTelephone { get; set; }

        public string? EmailAddress { get; set; }

        public string? Notes { get; set; }

        public DateTime? CreatedAt { get; set; }

        public int? CreatedBy { get; set; }

        public DateTime? ModifiedAt { get; set; }

        public int? ModifiedBy { get; set; }

    }
}
