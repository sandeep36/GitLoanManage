func @_LoanManagementService.Logger.LogService.Debug$string$(none) -> () loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Logger\\LogService.cs" :12 :8) {
^entry (%_message : none):
%0 = cbde.alloca none loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Logger\\LogService.cs" :12 :26)
cbde.store %_message, %0 : memref<none> loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Logger\\LogService.cs" :12 :26)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Logger\\LogService.cs" :14 :12) // Not a variable of known type: logger
%2 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Logger\\LogService.cs" :14 :25) // Not a variable of known type: message
%3 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Logger\\LogService.cs" :14 :12) // logger.Debug(message) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_LoanManagementService.Logger.LogService.Error$string$(none) -> () loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Logger\\LogService.cs" :17 :8) {
^entry (%_message : none):
%0 = cbde.alloca none loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Logger\\LogService.cs" :17 :26)
cbde.store %_message, %0 : memref<none> loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Logger\\LogService.cs" :17 :26)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Logger\\LogService.cs" :19 :12) // Not a variable of known type: logger
%2 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Logger\\LogService.cs" :19 :25) // Not a variable of known type: message
%3 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Logger\\LogService.cs" :19 :12) // logger.Error(message) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_LoanManagementService.Logger.LogService.Information$string$(none) -> () loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Logger\\LogService.cs" :22 :8) {
^entry (%_message : none):
%0 = cbde.alloca none loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Logger\\LogService.cs" :22 :32)
cbde.store %_message, %0 : memref<none> loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Logger\\LogService.cs" :22 :32)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Logger\\LogService.cs" :24 :12) // Not a variable of known type: logger
%2 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Logger\\LogService.cs" :24 :24) // Not a variable of known type: message
%3 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Logger\\LogService.cs" :24 :12) // logger.Info(message) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_LoanManagementService.Logger.LogService.Warning$string$(none) -> () loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Logger\\LogService.cs" :27 :8) {
^entry (%_message : none):
%0 = cbde.alloca none loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Logger\\LogService.cs" :27 :28)
cbde.store %_message, %0 : memref<none> loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Logger\\LogService.cs" :27 :28)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Logger\\LogService.cs" :29 :12) // Not a variable of known type: logger
%2 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Logger\\LogService.cs" :29 :24) // Not a variable of known type: message
%3 = cbde.unknown : none loc("D:\\GitLoanManage\\LoanManagement\\LoanManagementService\\Logger\\LogService.cs" :29 :12) // logger.Warn(message) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
