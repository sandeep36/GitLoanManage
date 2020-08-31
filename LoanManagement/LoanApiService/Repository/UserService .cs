using LoanApiService.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Options;
using Microsoft.IdentityModel.Tokens;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;

namespace LoanApiService.Repository
{
    public class UserService:IUserService
    {
        private readonly UserDatabaseContext _dbcontext;
        private IConfiguration _config;
        private IOptions<Audience> _settings;
        

        public UserService(UserDatabaseContext context, IConfiguration config, IOptions<Audience> settings)
        {
            _dbcontext = context;
            _config = config;
            this._settings = settings;
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
           

            // return null if user not found
            if (userinfo == null)
                return null;

            return userinfo;
        }

        public string GenerateJSONWebToken(User usertoken)
        {
           // var securityKey = new SymmetricSecurityKey(System.Text.Encoding.UTF8.GetBytes(_config["Jwt:Key"]));
           // var credentials = new SigningCredentials(securityKey, SecurityAlgorithms.HmacSha256);
            var now = DateTime.UtcNow;
            var claims = new[] {
                new Claim(JwtRegisteredClaimNames.Sub, usertoken.UserName),
                new Claim(JwtRegisteredClaimNames.Email, usertoken.Email),
                new Claim(JwtRegisteredClaimNames.Jti, Guid.NewGuid().ToString()),
                new Claim(ClaimTypes.Role,usertoken.UserRole.RoleName)
              };
            /* var token = new JwtSecurityToken(_config["Jwt:Issuer"],
             _config["Jwt:Issuer"],
             claims,
             expires: DateTime.Now.AddMinutes(120),
             signingCredentials: credentials);*/
            var signingKey = new SymmetricSecurityKey(Encoding.ASCII.GetBytes(_settings.Value.Secret));
            var tokenValidationParameters = new TokenValidationParameters
            {
                ValidateIssuerSigningKey = true,
                IssuerSigningKey = signingKey,
                ValidateIssuer = true,
                ValidIssuer = _settings.Value.Iss,
                ValidateAudience = true,
                ValidAudience = _settings.Value.Aud,
                ValidateLifetime = true,
                ClockSkew = TimeSpan.Zero,
                RequireExpirationTime = true,

            };
            var jwt = new JwtSecurityToken(
                   issuer: _settings.Value.Iss,
                   audience: _settings.Value.Aud,
                   claims: claims,
                   notBefore: now,
                   expires: now.Add(TimeSpan.FromMinutes(2)),
                   signingCredentials: new SigningCredentials(signingKey, SecurityAlgorithms.HmacSha256)
               );
          //  var encodedJwt = new JwtSecurityTokenHandler().WriteToken(jwt);
           
             return new JwtSecurityTokenHandler().WriteToken(jwt);
            
        }
    }
    public class Audience
    {
        public string Secret { get; set; }
        public string Iss { get; set; }
        public string Aud { get; set; }
    }
}
