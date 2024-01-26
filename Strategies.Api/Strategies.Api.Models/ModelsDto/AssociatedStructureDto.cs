namespace Strategies.Api.Models.ModelsDto
{
    public class AssociatedStructureDto
    {
        public int AssociatedStructuresId { get; set; }

        public int FormId { get; set; }

        public string? Owners { get; set; }

        public bool? IsJoint { get; set; }

        public string? DescriptionType { get; set; }

        public string? AssociatedStructuresDetails { get; set; }

        public DateTime? CreatedAt { get; set; }

        public int? CreatedBy { get; set; }

        public DateTime? ModifiedAt { get; set; }

        public int? ModifiedBy { get; set; }

    }
}
