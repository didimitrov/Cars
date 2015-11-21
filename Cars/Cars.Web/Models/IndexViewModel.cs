using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using Cars.Models;
using Cars.Web.Infrastructure.Peek.Web.Infrastructure.Mapping;

namespace Cars.Web.Models
{
    public class IndexViewModel : IMapFrom<Car>
    {
        [Required]
        [Display(Name = "Описание")]
        [StringLength(20, MinimumLength = 3, ErrorMessage = "Моля въведете валидна марка между {2} и {1} символа!")]
        public string Description { get; set; }  
     
        [Display(Name = "Вносители")]
        public ICollection<Shipper> Shippers { get; set; }
    }
}