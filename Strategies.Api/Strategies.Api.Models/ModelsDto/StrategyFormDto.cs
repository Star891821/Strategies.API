using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Strategies.Api.Models.ModelsDto
{
    public class StrategyFormDto
    {
        public int FormId { get; set; }

        public int? FormStatus { get; set; }

        public DateTime? CreatedAt { get; set; }

        public int? CreatedBy { get; set; }

        public DateTime? ModifiedAt { get; set; }

        public int? ModifiedBy { get; set; }
       

        public virtual List<CustomerDto> Customers { get; set; }

        public virtual List<CustomerContactDetailDto> CustomerContactDetails { get; set; }

        public virtual List<CashFlowRequirementDto> CashFlowRequirements { get; set; }

        public virtual List<PlannedExpenditureDto> PlannedExpenditures { get; set; }

        public virtual List<ExpectedFutureInflowDto> ExpectedFutureInflows { get; set; }
      
    }
}
