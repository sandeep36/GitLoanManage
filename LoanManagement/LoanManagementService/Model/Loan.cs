using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace LoanManagementService.Model
{
    public class Loan
    {
        [Key]
        public int Id{ get; set; }
        public int LoanNumber { get; set; }
        public  decimal LoanAmount { get; set; }
        public int LoanTerm { get; set; }
        public string LoanType { get; set; }
        public bool LoanStatus { get; set; }

        public virtual BorrowerInformation BorrowerInformation { get; set; }
        public virtual PropertyInfomation PropertyInfomation { get; set; }
        public virtual LegalDocument LegalDocument { get; set; }







    }
}
