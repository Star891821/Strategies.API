using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Strategies.Api.Models.ModelsDto
{
    public class ExpectedFutureInflowDto
    {
        public int ExpectedFutureInflowsId { get; set; }

        public string Description { get; set; } = null!;

        public int FormId { get; set; }

        public int? PartnerId { get; set; }

        public int? CustomerId { get; set; }

        public string Amount { get; set; } = null!;

        public DateTime Date { get; set; }

        public DateTime? CreatedAt { get; set; }

        public int? CreatedBy { get; set; }

        public DateTime? ModifiedAt { get; set; }

        public int? ModifiedBy { get; set; }

    }
}
