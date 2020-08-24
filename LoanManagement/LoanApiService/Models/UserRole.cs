﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace LoanApiService.Models
{
    public class UserRole
    {
        [Key]
        public int RoleId { get; set; }
        public string RoleName { get; set; }

    }
}
