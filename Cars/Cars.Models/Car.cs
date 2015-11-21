using System;
using System.Collections.Generic;
using System.ComponentModel;
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

        [Required]
        [StringLength(50, MinimumLength = 3)]
        public string Brand { get; set; }
       
        [Required]
        [DisplayName("Година")]
        public int Year { get; set; }

        [Required]
        public int Power { get; set; }

        [Required]
        public string Description { get; set; }

        [Required]
        public int ShipperId { get; set; }

        public virtual Shipper Shipper { get; set; }
    }
}
