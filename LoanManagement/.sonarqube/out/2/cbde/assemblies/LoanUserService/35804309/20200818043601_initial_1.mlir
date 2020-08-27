// Skipping function Up(none), it contains poisonous unsupported syntaxes

func @_LoanApiService.Migrations.initial.Down$Microsoft.EntityFrameworkCore.Migrations.MigrationBuilder$(none) -> () loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Migrations\\20200818043601_initial.cs" :49 :8) {
^entry (%_migrationBuilder : none):
%0 = cbde.alloca none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Migrations\\20200818043601_initial.cs" :49 :37)
cbde.store %_migrationBuilder, %0 : memref<none> loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Migrations\\20200818043601_initial.cs" :49 :37)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Migrations\\20200818043601_initial.cs" :51 :12) // Not a variable of known type: migrationBuilder
%2 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Migrations\\20200818043601_initial.cs" :52 :22) // "Users" (StringLiteralExpression)
%3 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Migrations\\20200818043601_initial.cs" :51 :12) // migrationBuilder.DropTable(                  name: "Users") (InvocationExpression)
%4 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Migrations\\20200818043601_initial.cs" :54 :12) // Not a variable of known type: migrationBuilder
%5 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Migrations\\20200818043601_initial.cs" :55 :22) // "UserRoles" (StringLiteralExpression)
%6 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Migrations\\20200818043601_initial.cs" :54 :12) // migrationBuilder.DropTable(                  name: "UserRoles") (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
