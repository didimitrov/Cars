using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Cars.Data.Repositories;
using Cars.Models;

namespace Cars.Data.Uow
{
    public interface IUowData
    {
        IRepository<Car> Cars { get; }
        IRepository<Shipper> Shippers { get; }
        IRepository<ApplicationUser> Users { get; }

        int SaveChanges();
    }
}
