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

        public List<Loan> GetLoanInfo(SearchInfo searchInfo)
        {
            IQueryable<Loan> query = _dbcontext.Loans;
            

            var borrowersName = new BorrowerInformation();
            try
            {
                if (!string.IsNullOrWhiteSpace(searchInfo.BorrowerName))
                {
                    var borrowers = this.GetBorrowersByName(searchInfo.BorrowerName);
                    var borrowersId = borrowers.Select(x => x.Id).ToArray();
                    query = query.Where(x => borrowersId.Contains(x.BorrowerInformation.Id));
                   /* foreach (var borrower in borrowers)
                    {
                        // query = query.Where(x => x.BorrowerInformation.Id == borrower.Id);

                           
                    }*/
                }
                if (!String.IsNullOrEmpty(searchInfo.LoanNumber))
                {
                    int loanNumber = String.IsNullOrEmpty(searchInfo.LoanNumber)? 0: int.Parse(searchInfo.LoanNumber);
                    if(loanNumber > 0)
                    query = query.Where(x => x.LoanNumber == loanNumber);
                }
                if (!String.IsNullOrEmpty(searchInfo.LoanAmount))
                {
                    decimal loanAmount =String.IsNullOrEmpty(searchInfo.LoanAmount) ? 0: decimal.Parse(searchInfo.LoanAmount);
                    if(loanAmount > 0)
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
            catch (Exception ex)
            {

                 throw;

            }
        }
    }
}
