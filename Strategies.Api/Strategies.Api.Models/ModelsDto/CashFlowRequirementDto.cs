namespace Strategies.Api.Models.ModelsDto
{
    public class CashFlowRequirementDto
    {
        public int CashflowId { get; set; }

        public int FormId { get; set; }

        public int QuestionId { get; set; }

        public string Amount { get; set; } = null!;

        public DateTime? CreatedAt { get; set; }

        public int? CreatedBy { get; set; }

        public DateTime? ModifiedAt { get; set; }

        public int? ModifiedBy { get; set; }

    }
}
