using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using LoanManagementService.Logger;
using LoanManagementService.Model;
using LoanManagementService.Repository;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace LoanManagementService.Controllers
{
    [ApiVersion("1.0")]
    [Route("api/{v:apiVersion}/Loanmanagement")]
    [Route("api/[controller]")]
    [ApiController]
    public class LoanManageController : ControllerBase
    {
        private ILoanService _loanService;
        private ILoggerService _logger;
        private readonly ILoanDataRepository<Loan> _loandataRepository;
        public LoanManageController(ILoanService loanService, ILoanDataRepository<Loan> loandataRepository, ILoggerService logger)
        {
            this._loanService = loanService;
            this. _loandataRepository = loandataRepository;
            this._logger = logger;
        }


        [Route("SearchLoan")]
        [HttpPost]
       // [Authorize(Roles = "User")]
        public IActionResult SearchLoan(string borrowerName,int loanTerm,decimal loanAmount)
        {
            try
            {
                var result = _loanService.GetLoanInfo(borrowerName, loanTerm, loanAmount);
                if (result.Count == 0)
                {
                    return NotFound("data not found!");
                }
                else
                {
                    return new JsonResult(result) { StatusCode = StatusCodes.Status200OK };
                }
            }
            catch (Exception ex)
            {
               _logger.Error(ex.Message);
                return StatusCode((int)HttpStatusCode.InternalServerError, ex.Message);
            }
            
        }
       
        [HttpPost]
        [Route("AddLoan")]
        // [Authorize(Roles = "Admin")]
        public IActionResult AddLoan([Bind(nameof(Loan.LoanNumber),nameof(Loan.LoanAmount),nameof(Loan.LoanTerm),
            nameof(Loan.LoanType),nameof(Loan.LoanAmount),nameof(Loan.BorrowerInformation.BorrowerName),
            nameof(Loan.PropertyInfomation.AddressLine1),nameof(Loan.PropertyInfomation.AddressLine2),nameof(Loan.PropertyInfomation.City),nameof(Loan.PropertyInfomation.ZipCode))][FromBody] Loan loan)
        {
            try
            {
                if (loan is null)
                {
                    return BadRequest("loan is null.");
                }

                if (!ModelState.IsValid)
                {
                    return BadRequest();
                }

                _loandataRepository.Add(loan);
                return Ok();
            }
            catch (Exception ex)
            {
                _logger.Error(ex.Message);
                 return StatusCode((int)HttpStatusCode.InternalServerError, ex.Message);
            }
           
        }

        [HttpPut]
        [Route("UpdateLoan/{id}")]
       // [Authorize(Roles = "Admin")]
        public IActionResult UpdateLoan([Bind(nameof(Loan.LoanAmount),nameof(Loan.LoanTerm),nameof(Loan.LoanType), nameof(Loan.Id))] int id, [FromBody] Loan loan)
        {
            try
            {
                if (loan == null)
                {
                    return BadRequest("Data no found.");
                }

                var loanToUpdate = _loandataRepository.Get(id);
                if (loanToUpdate == null)
                {
                    return NotFound("The record couldn't be found.");
                }

                if (!ModelState.IsValid)
                {
                    return BadRequest();
                }

                _loandataRepository.Update(loanToUpdate, loan);

                return Ok();
            }
            catch (Exception ex)
            {
                _logger.Error(ex.Message);
                return StatusCode((int)HttpStatusCode.InternalServerError, ex.Message);
            }
           
        }
    }
}
