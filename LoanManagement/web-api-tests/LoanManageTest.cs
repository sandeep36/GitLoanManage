using System;
using System.Collections.Generic;
using System.Text;

using NUnit.Framework;
using LoanApiService;
using LoanManagementService;
using LoanUserService;
using LoanManagementService.Model;
using LoanManagementService.Repository;
using Moq;
using LoanManagementService.Controllers;
using Microsoft.IdentityModel.Tokens;
using LoanApiService.Repository;
using Microsoft.Extensions.Configuration;

namespace web_api_tests
{
    [TestFixture]
    class LoanManageTest
    {
        #region Variables
       /* IUserService _userService;
        ILoanDataRepository<Loan> loanService;
        ILoanService _loanservice;
        IConfiguration configuration;
        List<Loan> _loan;
*/

        #endregion
        [SetUp]
        public void Setup()
        {
           
            
        }

        [Test]
        public void SearchLoan_Test()
        {
           // var service = new LoanService();
        }
       /* public ILoanService SetupLoanServiceRepository()
        {
           *//* // Init repository
            var repo = new Mock<ILoanService>();
            string borrowerName;
            int loanTerm;
            decimal loanAmount;
            // Setup mocking behavior
            repo.Setup(r => r.GetLoanInfo(It.IsAny<string>),It.IsAny<int>(),It.IsAny<decimal>).Returns();
*//*
            
            // Return mock implementation
          //  return repo.Object;
        }
*/
    }
}
