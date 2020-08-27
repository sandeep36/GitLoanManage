func @_LoanUserService.Logger.LoggerManager.LogDebug$string$(none) -> () loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Logger\\LoggerManager .cs" :11 :8) {
^entry (%_message : none):
%0 = cbde.alloca none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Logger\\LoggerManager .cs" :11 :29)
cbde.store %_message, %0 : memref<none> loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Logger\\LoggerManager .cs" :11 :29)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Logger\\LoggerManager .cs" :13 :18) // new NotImplementedException() (ObjectCreationExpression)
cbde.throw %1 :  none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Logger\\LoggerManager .cs" :13 :12)

^1: // ExitBlock
return

}
func @_LoanUserService.Logger.LoggerManager.LogError$string$(none) -> () loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Logger\\LoggerManager .cs" :16 :8) {
^entry (%_message : none):
%0 = cbde.alloca none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Logger\\LoggerManager .cs" :16 :29)
cbde.store %_message, %0 : memref<none> loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Logger\\LoggerManager .cs" :16 :29)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Logger\\LoggerManager .cs" :18 :18) // new NotImplementedException() (ObjectCreationExpression)
cbde.throw %1 :  none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Logger\\LoggerManager .cs" :18 :12)

^1: // ExitBlock
return

}
func @_LoanUserService.Logger.LoggerManager.LogInfo$string$(none) -> () loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Logger\\LoggerManager .cs" :21 :8) {
^entry (%_message : none):
%0 = cbde.alloca none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Logger\\LoggerManager .cs" :21 :28)
cbde.store %_message, %0 : memref<none> loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Logger\\LoggerManager .cs" :21 :28)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Logger\\LoggerManager .cs" :23 :18) // new NotImplementedException() (ObjectCreationExpression)
cbde.throw %1 :  none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Logger\\LoggerManager .cs" :23 :12)

^1: // ExitBlock
return

}
func @_LoanUserService.Logger.LoggerManager.LogWarn$string$(none) -> () loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Logger\\LoggerManager .cs" :26 :8) {
^entry (%_message : none):
%0 = cbde.alloca none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Logger\\LoggerManager .cs" :26 :28)
cbde.store %_message, %0 : memref<none> loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Logger\\LoggerManager .cs" :26 :28)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Logger\\LoggerManager .cs" :28 :18) // new NotImplementedException() (ObjectCreationExpression)
cbde.throw %1 :  none loc("D:\\GitLoanManage\\LoanManagement\\LoanApiService\\Logger\\LoggerManager .cs" :28 :12)

^1: // ExitBlock
return

}
