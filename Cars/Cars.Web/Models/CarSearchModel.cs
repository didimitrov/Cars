using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using Cars.Models;
using Cars.Web.Infrastructure.Peek.Web.Infrastructure.Mapping;

namespace Cars.Web.Models
{
    public class CarSearchModel : IMapFrom<Car>
    {
        [Display(Name = "Описание")]
        [StringLength(20, MinimumLength = 3, ErrorMessage = "Трябва да е между {2} и {1} символа")]      
        public string Description { get; set; }

        [Display(Name = "Вносител")]
        public int? Shippers { get; set; }

        public int TotalRecords { get; set; }

        public List<Car> Cars { get; set; }

    }
}