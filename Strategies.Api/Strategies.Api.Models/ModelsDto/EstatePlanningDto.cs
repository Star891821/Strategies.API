namespace Strategies.Api.Models.ModelsDto
{
    public class EstatePlanningDto
    {
        public int EstatePlanningId { get; set; }

        public int FormId { get; set; }

        public string? Owners { get; set; }

        public bool? IsJoint { get; set; }

        public string? PlanningType { get; set; }

        public string EstatePlanningStatus { get; set; } = null!;

        public string? Notes { get; set; }

        public DateTime? CreatedAt { get; set; }

        public int? CreatedBy { get; set; }

        public DateTime? ModifiedAt { get; set; }

        public int? ModifiedBy { get; set; }

    }
}
