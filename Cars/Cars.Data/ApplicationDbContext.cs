using System.Data.Entity;
using Cars.Data.Migrations;
using Cars.Models;
using Microsoft.AspNet.Identity.EntityFramework;

namespace Cars.Data
{
    public class ApplicationDbContext : IdentityDbContext<ApplicationUser>
    {
        public ApplicationDbContext()
            : base("DefaultConnection")
        {
           Database.SetInitializer(new MigrateDatabaseToLatestVersion<ApplicationDbContext, Configuration>());
        }
        public IDbSet<Car> Cars { get; set; }
        public IDbSet<Shipper> Shippers { get; set; }
    }
}
