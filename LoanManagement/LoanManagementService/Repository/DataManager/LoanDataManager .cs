using LoanManagementService.Model;
//using LoanManagementService.Repository.DTO;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LoanManagementService.Repository.DataManager
{
    public class LoanDataManager: ILoanDataRepository<Loan>
    {
        private readonly LoanDatabaseContext _dbcontext;
       

        public LoanDataManager(LoanDatabaseContext context)
        {
            _dbcontext = context;
           
        }

        public void Add(Loan entity)
        {
            _dbcontext.Loans.Add(entity);
            _dbcontext.SaveChanges();
        }

        public void Delete(Loan entity)
        {
            throw new NotImplementedException();
        }

        public Loan Get(int id)
        {
            var loan = _dbcontext.Loans.SingleOrDefault(b => b.Id == id);
            return loan;
        }

        public IEnumerable<Loan> GetAll()
        {
            return _dbcontext.Loans.Include(loan => loan.BorrowerInformation)
                .ToList();
        }

       /* public LoanDto GetDto(int id)
        {
            _dbcontext.ChangeTracker.LazyLoadingEnabled = true;

            var loan = _dbcontext.Loans.SingleOrDefault(lon => lon.Id == id);
            return LoanDtoMapper.MapToDto(loan);
            
        }*/

        public void Update(Loan entityToUpdate, Loan entity)
        {
            entityToUpdate = _dbcontext.Loans
                .Include(a => a.BorrowerInformation)
                .Include(a => a.PropertyInfomation)
                .Include(a=>a.LegalDocument)
                .Single(b => b.Id == entityToUpdate.Id);
            
            entityToUpdate.LoanAmount = entity.LoanAmount;
            entityToUpdate.LoanType = entity.LoanType;
            entityToUpdate.LoanNumber = entity.LoanNumber;
           
           _dbcontext.Update(entityToUpdate).State = EntityState.Modified;
           _dbcontext.SaveChanges();
        }
    }
}
