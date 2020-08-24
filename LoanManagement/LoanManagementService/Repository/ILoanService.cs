using LoanManagementService.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace LoanManagementService.Repository
{
   public interface ILoanService
    {
        List<Loan> GetLoanInfo(string borrowerName, int loanTerm, decimal loanAmount);
        List<BorrowerInformation> GetBorrowersByName(string borrowerName);
    }

    
    public interface ILoanDataRepository<TEntity>
    {
        IEnumerable<TEntity> GetAll();
        TEntity Get(int id);
       // TDto GetDto(int id);
        void Add(TEntity entity);
        void Update(TEntity entityToUpdate, TEntity entity);
        void Delete(TEntity entity);
    }
}
