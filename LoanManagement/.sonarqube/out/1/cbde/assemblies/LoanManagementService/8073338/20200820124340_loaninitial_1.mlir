// Skipping function Up(none), it contains poisonous unsupported syntaxes

func @_LoanManagementService.Migrations.loaninitial.Down$Microsoft.EntityFrameworkCore.Migrations.MigrationBuilder$(none) -> () loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Migrations\\20200820124340_loaninitial.cs" :83 :8) {
^entry (%_migrationBuilder : none):
%0 = cbde.alloca none loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Migrations\\20200820124340_loaninitial.cs" :83 :37)
cbde.store %_migrationBuilder, %0 : memref<none> loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Migrations\\20200820124340_loaninitial.cs" :83 :37)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Migrations\\20200820124340_loaninitial.cs" :85 :12) // Not a variable of known type: migrationBuilder
%2 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Migrations\\20200820124340_loaninitial.cs" :86 :22) // "BorrowerInformations" (StringLiteralExpression)
%3 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Migrations\\20200820124340_loaninitial.cs" :85 :12) // migrationBuilder.DropTable(                  name: "BorrowerInformations") (InvocationExpression)
%4 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Migrations\\20200820124340_loaninitial.cs" :88 :12) // Not a variable of known type: migrationBuilder
%5 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Migrations\\20200820124340_loaninitial.cs" :89 :22) // "LegalDocument" (StringLiteralExpression)
%6 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Migrations\\20200820124340_loaninitial.cs" :88 :12) // migrationBuilder.DropTable(                  name: "LegalDocument") (InvocationExpression)
%7 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Migrations\\20200820124340_loaninitial.cs" :91 :12) // Not a variable of known type: migrationBuilder
%8 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Migrations\\20200820124340_loaninitial.cs" :92 :22) // "PropertyInfomations" (StringLiteralExpression)
%9 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Migrations\\20200820124340_loaninitial.cs" :91 :12) // migrationBuilder.DropTable(                  name: "PropertyInfomations") (InvocationExpression)
%10 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Migrations\\20200820124340_loaninitial.cs" :94 :12) // Not a variable of known type: migrationBuilder
%11 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Migrations\\20200820124340_loaninitial.cs" :95 :22) // "Loans" (StringLiteralExpression)
%12 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Migrations\\20200820124340_loaninitial.cs" :94 :12) // migrationBuilder.DropTable(                  name: "Loans") (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
