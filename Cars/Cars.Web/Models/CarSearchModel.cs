using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using Cars.Models;

namespace Cars.Web.Models
{
    public class CarSearchModel
    {
        [Display(Name = "Описание")]
        public string Description { get; set; }

        [Display(Name = "Вносител")]
        public int? Shippers { get; set; }

        public int TotalRecords { get; set; }

        public List<Car> Cars { get; set; }

    }
}