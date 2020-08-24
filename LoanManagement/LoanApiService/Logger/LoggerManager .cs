using NLog;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace LoanUserService.Logger
{
    public class LoggerManager : ILoggerManager
    {
         private static ILogger logger = LogManager.GetCurrentClassLogger();
        public void LogDebug(string message)
        {
            throw new NotImplementedException();
        }

        public void LogError(string message)
        {
            throw new NotImplementedException();
        }

        public void LogInfo(string message)
        {
            throw new NotImplementedException();
        }

        public void LogWarn(string message)
        {
            throw new NotImplementedException();
        }
    }
}
