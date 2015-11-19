using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;

namespace Cars.Models
{
    public class Shipper
    {
        public Shipper()
        {
            this.Cars=new HashSet<Car>();
        }
        [Key]
        public int Id { get; set; }
        public virtual ICollection<Car> Cars { get; set; }
    }
}
