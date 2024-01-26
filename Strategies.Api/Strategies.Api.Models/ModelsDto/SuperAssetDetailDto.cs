namespace Strategies.Api.Models.ModelsDto
{
    public class SuperAssetDetailDto
    {
        public int SuperAssetDetailsId { get; set; }

        public int FormId { get; set; }

        public string? Owners { get; set; }

        public bool? IsJoint { get; set; }

        public int SuperassetType { get; set; }

        public string? Contributions { get; set; }

        public string? FundBalance { get; set; }

        public DateTime? CreatedAt { get; set; }

        public int? CreatedBy { get; set; }

        public DateTime? ModifiedAt { get; set; }

        public int? ModifiedBy { get; set; }

    }
}
