// Skipping function AuthenticateUser(none), it contains poisonous unsupported syntaxes

func @_LoanApiService.Repository.UserService.GenerateJSONWebToken$LoanApiService.Models.User$(none) -> none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Repository\\UserService .cs" :57 :8) {
^entry (%_usertoken : none):
%0 = cbde.alloca none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Repository\\UserService .cs" :57 :43)
cbde.store %_usertoken, %0 : memref<none> loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Repository\\UserService .cs" :57 :43)
br ^0

^0: // JumpBlock
// Entity from another assembly: System
%1 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Repository\\UserService .cs" :59 :55) // System.Text.Encoding (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Repository\\UserService .cs" :59 :55) // System.Text.Encoding.UTF8 (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Repository\\UserService .cs" :59 :90) // Not a variable of known type: _config
%4 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Repository\\UserService .cs" :59 :98) // "Jwt:Key" (StringLiteralExpression)
%5 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Repository\\UserService .cs" :59 :90) // _config["Jwt:Key"] (ElementAccessExpression)
%6 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Repository\\UserService .cs" :59 :55) // System.Text.Encoding.UTF8.GetBytes(_config["Jwt:Key"]) (InvocationExpression)
%7 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Repository\\UserService .cs" :59 :30) // new SymmetricSecurityKey(System.Text.Encoding.UTF8.GetBytes(_config["Jwt:Key"])) (ObjectCreationExpression)
%9 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Repository\\UserService .cs" :60 :53) // Not a variable of known type: securityKey
// Entity from another assembly: SecurityAlgorithms
%10 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Repository\\UserService .cs" :60 :66) // SecurityAlgorithms.HmacSha256 (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Repository\\UserService .cs" :60 :30) // new SigningCredentials(securityKey, SecurityAlgorithms.HmacSha256) (ObjectCreationExpression)
%13 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Repository\\UserService .cs" :62 :25) // new[] {                  new Claim(JwtRegisteredClaimNames.Sub, usertoken.UserName),                  new Claim(JwtRegisteredClaimNames.Email, usertoken.Email),                  new Claim(JwtRegisteredClaimNames.Jti, Guid.NewGuid().ToString()),                  new Claim(ClaimTypes.Role,usertoken.UserRole.RoleName)                } (ImplicitArrayCreationExpression)
// Entity from another assembly: JwtRegisteredClaimNames
%14 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Repository\\UserService .cs" :63 :26) // JwtRegisteredClaimNames.Sub (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Repository\\UserService .cs" :63 :55) // Not a variable of known type: usertoken
%16 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Repository\\UserService .cs" :63 :55) // usertoken.UserName (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Repository\\UserService .cs" :63 :16) // new Claim(JwtRegisteredClaimNames.Sub, usertoken.UserName) (ObjectCreationExpression)
// Entity from another assembly: JwtRegisteredClaimNames
%18 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Repository\\UserService .cs" :64 :26) // JwtRegisteredClaimNames.Email (SimpleMemberAccessExpression)
%19 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Repository\\UserService .cs" :64 :57) // Not a variable of known type: usertoken
%20 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Repository\\UserService .cs" :64 :57) // usertoken.Email (SimpleMemberAccessExpression)
%21 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Repository\\UserService .cs" :64 :16) // new Claim(JwtRegisteredClaimNames.Email, usertoken.Email) (ObjectCreationExpression)
// Entity from another assembly: JwtRegisteredClaimNames
%22 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Repository\\UserService .cs" :65 :26) // JwtRegisteredClaimNames.Jti (SimpleMemberAccessExpression)
// Entity from another assembly: Guid
%23 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Repository\\UserService .cs" :65 :55) // Guid.NewGuid() (InvocationExpression)
%24 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Repository\\UserService .cs" :65 :55) // Guid.NewGuid().ToString() (InvocationExpression)
%25 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Repository\\UserService .cs" :65 :16) // new Claim(JwtRegisteredClaimNames.Jti, Guid.NewGuid().ToString()) (ObjectCreationExpression)
// Entity from another assembly: ClaimTypes
%26 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Repository\\UserService .cs" :66 :26) // ClaimTypes.Role (SimpleMemberAccessExpression)
%27 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Repository\\UserService .cs" :66 :42) // Not a variable of known type: usertoken
%28 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Repository\\UserService .cs" :66 :42) // usertoken.UserRole (SimpleMemberAccessExpression)
%29 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Repository\\UserService .cs" :66 :42) // usertoken.UserRole.RoleName (SimpleMemberAccessExpression)
%30 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Repository\\UserService .cs" :66 :16) // new Claim(ClaimTypes.Role,usertoken.UserRole.RoleName) (ObjectCreationExpression)
%32 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Repository\\UserService .cs" :68 :45) // Not a variable of known type: _config
%33 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Repository\\UserService .cs" :68 :53) // "Jwt:Issuer" (StringLiteralExpression)
%34 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Repository\\UserService .cs" :68 :45) // _config["Jwt:Issuer"] (ElementAccessExpression)
%35 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Repository\\UserService .cs" :69 :12) // Not a variable of known type: _config
%36 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Repository\\UserService .cs" :69 :20) // "Jwt:Issuer" (StringLiteralExpression)
%37 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Repository\\UserService .cs" :69 :12) // _config["Jwt:Issuer"] (ElementAccessExpression)
%38 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Repository\\UserService .cs" :70 :12) // Not a variable of known type: claims
// Entity from another assembly: DateTime
%39 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Repository\\UserService .cs" :71 :21) // DateTime.Now (SimpleMemberAccessExpression)
%40 = constant 120 : i32 loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Repository\\UserService .cs" :71 :45)
%41 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Repository\\UserService .cs" :71 :21) // DateTime.Now.AddMinutes(120) (InvocationExpression)
%42 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Repository\\UserService .cs" :72 :32) // Not a variable of known type: credentials
%43 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Repository\\UserService .cs" :68 :24) // new JwtSecurityToken(_config["Jwt:Issuer"],              _config["Jwt:Issuer"],              claims,              expires: DateTime.Now.AddMinutes(120),              signingCredentials: credentials) (ObjectCreationExpression)
%45 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Repository\\UserService .cs" :74 :19) // new JwtSecurityTokenHandler() (ObjectCreationExpression)
%46 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Repository\\UserService .cs" :74 :60) // Not a variable of known type: token
%47 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Repository\\UserService .cs" :74 :19) // new JwtSecurityTokenHandler().WriteToken(token) (InvocationExpression)
return %47 : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Repository\\UserService .cs" :74 :12)

^1: // ExitBlock
cbde.unreachable

}
