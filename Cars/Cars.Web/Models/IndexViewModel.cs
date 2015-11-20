using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using Cars.Models;

namespace Cars.Web.Models
{
    public class IndexViewModel
    {
        [Required]
        [StringLength(20, MinimumLength = 3, ErrorMessage = "Must be between 3 and 20 characters!")]
        [Display(Name = "Описание")]
        public string Description { get; set; }  
     
        [Display(Name = "Вносители")]
        public ICollection<Shipper> Shippers { get; set; }
    }
}