func @_LoanManagementService.Repository.DataManager.LoanDataManager.Add$LoanManagementService.Model.Loan$(none) -> () loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Repository\\DataManager\\LoanDataManager .cs" :22 :8) {
^entry (%_entity : none):
%0 = cbde.alloca none loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Repository\\DataManager\\LoanDataManager .cs" :22 :24)
cbde.store %_entity, %0 : memref<none> loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Repository\\DataManager\\LoanDataManager .cs" :22 :24)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Repository\\DataManager\\LoanDataManager .cs" :24 :12) // Not a variable of known type: _dbcontext
%2 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Repository\\DataManager\\LoanDataManager .cs" :24 :12) // _dbcontext.Loans (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Repository\\DataManager\\LoanDataManager .cs" :24 :33) // Not a variable of known type: entity
%4 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Repository\\DataManager\\LoanDataManager .cs" :24 :12) // _dbcontext.Loans.Add(entity) (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Repository\\DataManager\\LoanDataManager .cs" :25 :12) // Not a variable of known type: _dbcontext
%6 = cbde.unknown : i32 loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Repository\\DataManager\\LoanDataManager .cs" :25 :12) // _dbcontext.SaveChanges() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_LoanManagementService.Repository.DataManager.LoanDataManager.Delete$LoanManagementService.Model.Loan$(none) -> () loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Repository\\DataManager\\LoanDataManager .cs" :28 :8) {
^entry (%_entity : none):
%0 = cbde.alloca none loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Repository\\DataManager\\LoanDataManager .cs" :28 :27)
cbde.store %_entity, %0 : memref<none> loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Repository\\DataManager\\LoanDataManager .cs" :28 :27)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Repository\\DataManager\\LoanDataManager .cs" :30 :18) // new NotImplementedException() (ObjectCreationExpression)
cbde.throw %1 :  none loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Repository\\DataManager\\LoanDataManager .cs" :30 :12)

^1: // ExitBlock
return

}
// Skipping function Get(i32), it contains poisonous unsupported syntaxes

// Skipping function GetAll(), it contains poisonous unsupported syntaxes

// Skipping function Update(none, none), it contains poisonous unsupported syntaxes

