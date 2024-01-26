namespace Strategies.Api.Models.ModelsDto
{
    public class ExpenseDetailDto
    {
        public int ExpenseDetailsId { get; set; }

        public int FormId { get; set; }

        public int? QuestionId { get; set; }

        public string? Description { get; set; }

        public string? Owners { get; set; }

        public bool? IsJoint { get; set; }

        public string? Amounts { get; set; }

        public string? Frequency { get; set; }

        public DateTime? CreatedAt { get; set; }

        public int? CreatedBy { get; set; }

        public DateTime? ModifiedAt { get; set; }

        public int? ModifiedBy { get; set; }

    }
}
