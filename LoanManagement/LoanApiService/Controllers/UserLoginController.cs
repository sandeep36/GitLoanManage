﻿using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using LoanApiService.Repository;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.IdentityModel.Tokens;
using LoanApiService.Models;
using LoanUserService.Logger;
using System.Net;

namespace LoanApiService.Controllers
{
   
    [ApiController]
    [ApiVersion("1.0")]
    [Route("api/v1.0/UserLogin")]
    public class UserLoginController : ControllerBase
    {
        private readonly ILoggerManager _logger;
        private IUserService _userService;
        public UserLoginController(IUserService userService, ILoggerManager logger)
        {
             this._userService = userService;
             this._logger = logger;
        }

        [HttpPost]
        [Route("Login")]
        
        public IActionResult Login([FromBody] User user)
        {
            IActionResult response = Unauthorized();
            try
            {
                var userAuthenticate = _userService.AuthenticateUser(user);
                if (userAuthenticate.Email == null)
                    return BadRequest(new { message = "Username or password is incorrect" });

                if (userAuthenticate != null)
                {
                    // authentication successful so generate jwt token
                    var tokenString = _userService.GenerateJSONWebToken(userAuthenticate);
                    response = Ok(new { token = tokenString,Role=userAuthenticate.UserRole.RoleName });
                }
                return response;
            }
            catch (Exception ex)
            {

                _logger.LogError(ex.Message);
                return StatusCode((int)HttpStatusCode.InternalServerError, ex.Message);

            }
            
        }
       
    }
}

