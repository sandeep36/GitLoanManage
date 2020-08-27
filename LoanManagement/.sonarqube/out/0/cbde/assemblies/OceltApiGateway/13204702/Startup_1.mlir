func @_OceltApiGateway.Startup.ConfigureServices$Microsoft.Extensions.DependencyInjection.IServiceCollection$(none) -> () loc("D:\\GitLoanManage\\LoanManagement\\OceltApiGateway\\Startup.cs" :18 :8) {
^entry (%_services : none):
%0 = cbde.alloca none loc("D:\\GitLoanManage\\LoanManagement\\OceltApiGateway\\Startup.cs" :18 :38)
cbde.store %_services, %0 : memref<none> loc("D:\\GitLoanManage\\LoanManagement\\OceltApiGateway\\Startup.cs" :18 :38)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\OceltApiGateway\\Startup.cs" :20 :12) // Not a variable of known type: services
%2 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\OceltApiGateway\\Startup.cs" :20 :12) // services.AddOcelot() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_OceltApiGateway.Startup.Configure$Microsoft.AspNetCore.Builder.IApplicationBuilder.Microsoft.AspNetCore.Hosting.IWebHostEnvironment$(none, none) -> () loc("D:\\GitLoanManage\\LoanManagement\\OceltApiGateway\\Startup.cs" :24 :8) {
^entry (%_app : none, %_env : none):
%0 = cbde.alloca none loc("D:\\GitLoanManage\\LoanManagement\\OceltApiGateway\\Startup.cs" :24 :30)
cbde.store %_app, %0 : memref<none> loc("D:\\GitLoanManage\\LoanManagement\\OceltApiGateway\\Startup.cs" :24 :30)
%1 = cbde.alloca none loc("D:\\GitLoanManage\\LoanManagement\\OceltApiGateway\\Startup.cs" :24 :55)
cbde.store %_env, %1 : memref<none> loc("D:\\GitLoanManage\\LoanManagement\\OceltApiGateway\\Startup.cs" :24 :55)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\OceltApiGateway\\Startup.cs" :26 :16) // Not a variable of known type: env
%3 = cbde.unknown : i1 loc("D:\\GitLoanManage\\LoanManagement\\OceltApiGateway\\Startup.cs" :26 :16) // env.IsDevelopment() (InvocationExpression)
cond_br %3, ^1, ^2 loc("D:\\GitLoanManage\\LoanManagement\\OceltApiGateway\\Startup.cs" :26 :16)

^1: // SimpleBlock
%4 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\OceltApiGateway\\Startup.cs" :28 :16) // Not a variable of known type: app
%5 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\OceltApiGateway\\Startup.cs" :28 :16) // app.UseDeveloperExceptionPage() (InvocationExpression)
br ^2

^2: // SimpleBlock
%6 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\OceltApiGateway\\Startup.cs" :31 :12) // Not a variable of known type: app
%7 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\OceltApiGateway\\Startup.cs" :31 :12) // app.UseOcelot() (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
