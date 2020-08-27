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

namespace web_api_tests
{
    [TestFixture]
    class LoanManageTest
    {
        #region Variables
        IUserService _userService;
        
        
        #endregion
        [SetUp]
        public void Setup()
        {
          //  _userService = new IUserService();
            
        }

        [Test]
        public void SearchLoan_Test()
        {
           // var service = new LoanService();
        }
    }
}
