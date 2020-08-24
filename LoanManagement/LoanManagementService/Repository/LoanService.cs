using LoanManagementService.Model;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Security.Cryptography;
using System.Threading.Tasks;


namespace LoanManagementService.Repository
{
    public class LoanService : ILoanService
    {
        private readonly LoanDatabaseContext _dbcontext;
        private IConfiguration _config;

        public LoanService(LoanDatabaseContext context, IConfiguration config)
        {
            _dbcontext = context;
            _config = config;
        }

        public List<BorrowerInformation> GetBorrowersByName(string borrowerName)
        {
            IQueryable<BorrowerInformation> borrowrs = _dbcontext.BorrowerInformations;
            if (string.IsNullOrWhiteSpace(borrowerName))
                return null;
            
            borrowrs = borrowrs.Where(bow => bow.BorrowerName.ToLower().Contains(borrowerName.Trim().ToLower()));

            return borrowrs.ToList();
        }

        public List<Loan> GetLoanInfo(string borrowerName, int loanTerm, decimal loanAmount)
        {
            IQueryable<Loan> query = _dbcontext.Loans;
            

            var borrowersName = new BorrowerInformation();
            try
            {
                if (!string.IsNullOrWhiteSpace(borrowerName))
                {
                    var borrowers = this.GetBorrowersByName(borrowerName);
                    foreach (var borrower in borrowers)
                    {
                         query = query.Where(x => x.BorrowerInformation.Id == borrower.Id);
                                             
                    }
                }
                if (loanTerm > 0)
                {
                    query = query.Where(x => x.LoanTerm == loanTerm);
                }
                if (loanAmount > 0)
                {
                    query = query.Where(x => x.LoanAmount == loanAmount);
                }
               
                //  return query.ToList();
                  query.Select(x => new {
                    x.LoanAmount,
                    x.LoanTerm,
                    x.LoanType,
                    x.BorrowerInformation.BorrowerName
                });
                
                return query.ToList();
            }
            catch (Exception)
            {

                throw;

            }
        }
    }
}
