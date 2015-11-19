using System;
using System.ComponentModel.DataAnnotations;

namespace Cars.Models
{
    public class Car
    {
        [Key]
        public int Id { get; set; }
        public string Brand { get; set; }
        public DateTime Year { get; set; }
        public int ShipperId { get; set; }
        public virtual Shipper Shipper { get; set; }
    }
}
