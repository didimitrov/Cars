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
        public int Id { get; set; }

        [Display(Name = "Description")]
        public String Description { get; set; }

        [Display(Name = "Shippers")]
        public Int32? Shippers { get; set; }

        public Int32 Page { get; set; }
        public Int32 PageSize { get; set; }
        public String Sort { get; set; }
        public String SortDir { get; set; }
        public Int32 TotalRecords { get; set; }
        public List<Car> Cars { get; set; }
        public CarSearchModel()
        {
            Page = 1;
            PageSize = 5;
            Sort = "Year";
            SortDir = "DESC";
        }
    }
}