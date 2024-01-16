using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Strategies.Api.Models.ModelsDto
{
    public class DisasquentionnaireDto
    {
        public int DisasqId { get; set; }

        public int FormId { get; set; }

        public string? DisasqQuestion { get; set; }

        public string? DisasqAnswer { get; set; }

        public DateTime? CreatedAt { get; set; }

        public int? CreatedBy { get; set; }

        public DateTime? ModifiedAt { get; set; }

        public int? ModifiedBy { get; set; }

    }
}
