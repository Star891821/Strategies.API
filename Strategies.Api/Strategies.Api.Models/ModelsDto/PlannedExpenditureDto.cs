namespace Strategies.Api.Models.ModelsDto
{
    public class PlannedExpenditureDto
    {
        public int PlannedExpenditureId { get; set; }

        public string Description { get; set; }

        public int FormId { get; set; }

        public string? Owners { get; set; }

        public bool? IsJoint { get; set; }

        public string Amount { get; set; } = null!;

        public DateTime Date { get; set; }

        public DateTime? CreatedAt { get; set; }

        public int? CreatedBy { get; set; }

        public DateTime? ModifiedAt { get; set; }

        public int? ModifiedBy { get; set; }

        public int? QuestionId { get; set; }

    }
}
