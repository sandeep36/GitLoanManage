using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace LoanManagementService.Model
{
    public class LoanDatabaseContext:DbContext
    {
        public LoanDatabaseContext(DbContextOptions<LoanDatabaseContext> options) : base(options)
        {

        }
        public DbSet<Loan> Loans { get; set; }
        public DbSet<BorrowerInformation> BorrowerInformations { get; set; }
        public DbSet<PropertyInfomation> PropertyInfomations { get; set; }
        

        

    }
}
