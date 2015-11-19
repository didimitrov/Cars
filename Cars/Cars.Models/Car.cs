using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Cars.Models
{
    public class Car
    {
        [Key]
        public int Id { get; set; }
        public string Brand { get; set; }

        [Range(1900, 2016,ErrorMessage="Date must be valid integer between 1900 and 2016")]
        public int Year { get; set; }
        public string Description { get; set; }
        public int ShipperId { get; set; }
        public virtual Shipper Shipper { get; set; }
    }
}
