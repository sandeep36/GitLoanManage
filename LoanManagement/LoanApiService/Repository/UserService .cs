using LoanApiService.Models;
using Microsoft.Extensions.Configuration;
using Microsoft.IdentityModel.Tokens;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;

namespace LoanApiService.Repository
{
    public class UserService:IUserService
    {
        private readonly UserDatabaseContext _dbcontext;
        private IConfiguration _config;
        // DataDto datadto=new DataDto(_dbcontext);

        public UserService(UserDatabaseContext context, IConfiguration config)
        {
            _dbcontext = context;
            _config = config;
        }
        public User AuthenticateUser(User userathenticate)
        {
            var userinfo = new Models.User();
            var userRole = new Models.UserRole();
            var userInfo = (from user in _dbcontext.Users
                            join userrole in _dbcontext.UserRoles
                            on user.UserRole.RoleId equals userrole.RoleId
                            where (user.Email == userathenticate.Email && user.Password == userathenticate.Password)
                            select new
                            {
                                user.ID,
                                user.Email,
                                user.UserRole.RoleId,
                                user.UserName,
                                userrole.RoleName
                            }).FirstOrDefault();
            if (userInfo != null)
            {
                userinfo.ID = userInfo.ID;
                userinfo.UserName = userInfo.UserName;
                userRole.RoleName = userInfo.RoleName;
                userinfo.Email = userInfo.Email;
                userinfo.UserRole = userRole;
            }
            //Validate the User Credentials 
            //  var userValidate = _dbcontext.Users.Where(user => user.Email.Equals(userlogin.Email) && user.Password.Equals(userlogin.Password)).FirstOrDefault();

            // return null if user not found
            if (userinfo == null)
                return null;

            return userinfo;
        }

        public string GenerateJSONWebToken(User usertoken)
        {
            var securityKey = new SymmetricSecurityKey(System.Text.Encoding.UTF8.GetBytes(_config["Jwt:Key"]));
            var credentials = new SigningCredentials(securityKey, SecurityAlgorithms.HmacSha256);

            var claims = new[] {
                new Claim(JwtRegisteredClaimNames.Sub, usertoken.UserName),
                new Claim(JwtRegisteredClaimNames.Email, usertoken.Email),
                new Claim(JwtRegisteredClaimNames.Jti, Guid.NewGuid().ToString()),
                new Claim(ClaimTypes.Role,usertoken.UserRole.RoleName)
              };
            var token = new JwtSecurityToken(_config["Jwt:Issuer"],
            _config["Jwt:Issuer"],
            claims,
            expires: DateTime.Now.AddMinutes(120),
            signingCredentials: credentials);

            return new JwtSecurityTokenHandler().WriteToken(token);
        }
    }
}
