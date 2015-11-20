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
        [DisplayName("Марка")]
        [StringLength(50, MinimumLength = 3)]
        public string Brand { get; set; }

        [DisplayName("Гоадина")]
        [Range(1900, 2015,ErrorMessage="Date must be valid integer")]
        public int Year { get; set; }

        [DisplayName("Мощност")]
        public int Power { get; set; }

        [Required]
        [DisplayName("Описание")]
        public string Description { get; set; }

        [DisplayName("Вносител")]
        public int ShipperId { get; set; }
        public virtual Shipper Shipper { get; set; }
    }
}
