using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using Cars.Models;

namespace Cars.Web.Models
{
    public class CarViewModel
    {
        public int Id { get; set; }
        public string Description { get; set; }       
        public int ShipperId { get; set; }

        [Display(Name = "Shippers")]
        public ICollection<Shipper> Shippers { get; set; }
    }
}