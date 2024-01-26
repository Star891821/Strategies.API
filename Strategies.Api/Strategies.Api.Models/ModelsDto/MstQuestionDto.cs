namespace Strategies.Api.Models.ModelsDto
{
    public class MstQuestionDto
    {
        public int QuestionId { get; set; }

        public string QuestionDescription { get; set; } = null!;

        public string SectionName { get; set; } = null!;

        public int ActiveYn { get; set; }

        public DateTime? CreatedAt { get; set; }

        public int? CreatedBy { get; set; }

        public DateTime? ModifiedAt { get; set; }

        public int? ModifiedBy { get; set; }
    }
}
