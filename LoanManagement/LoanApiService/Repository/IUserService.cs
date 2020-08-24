
using LoanApiService.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace LoanApiService.Repository
{
    public interface IUserService
    {
        //  void UserLogin(string useremail,string userpassword);
        Models.User AuthenticateUser(User userathenticate);
        string GenerateJSONWebToken(User usertoken);
        
    }
}
