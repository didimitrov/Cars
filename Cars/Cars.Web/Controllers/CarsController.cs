
using System.Data.Entity;
using System.Linq;
using System.Web.Mvc;
using Cars.Data.Repositories;
using Cars.Models;
using Cars.Web.Models;
using Ninject.Infrastructure.Language;

namespace Cars.Web.Controllers
{
    public class CarsController : BaseController
    {
        private readonly IRepository<Car> _cars;

        public CarsController(IRepository<Car> cars)
        {
            _cars = cars;
        }

        public ActionResult Index()
        {
            var model = new IndexViewModel();
            ViewBag.Shippers = this.Data.Shippers.All();
           
            return View(model);
        }

        public ActionResult SearchResult(CarSearchModel model)
        {
            ViewBag.Shippers = this.Data.Shippers.All();

            // Get Cars
            model.Cars = _cars.All()
                .Where(x =>
                        (model.Description == null || x.Description.Contains(model.Description))                        
                        && (model.Shippers == null || x.ShipperId == model.Shippers))
                .OrderBy(x=>x.Year)
                .ToList();

            // total records for paging
            model.TotalRecords = _cars.All()
                .Count(x =>
                    (model.Description == null || x.Description.Contains(model.Description))
                    && (model.Shippers == null || x.ShipperId == model.Shippers));

            return View(model);
        }
    }
}