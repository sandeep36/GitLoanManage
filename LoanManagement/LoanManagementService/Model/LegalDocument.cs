using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace LoanManagementService.Model
{
    public class LegalDocument
    {
        [Key]
        [ForeignKey("Loan")]
        public int Id { get; set; }
        public string Documents { get; set; }
        public virtual Loan Loan { get; set; }
    }
}
