
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
            var model = this._cars.All().Select(x => new CarViewModel()
            {
                Description = x.Description,
                ShipperId = x.ShipperId,
            }).ToList();

            ViewBag.Shippers = this.Data.Shippers.All();


            return View();
        }
        public ActionResult Search(CarSearchModel model)
        {
            // To Bind the category drop down in search section
            ViewBag.Shippers = this.Data.Shippers.All();

            // Get Cars
            model.Cars = _cars.All()
                .Where(
                    x =>
                        (model.Description == null || x.Description.Contains(model.Description))
                        
                        && (model.Shippers == null || x.ShipperId == model.Shippers)
                ).ToList();

            // total records for paging
            model.TotalRecords = _cars.All()
                .Count(x =>
                    (model.Description == null || x.Description.Contains(model.Description))
                    && (model.Shippers == null || x.ShipperId == model.Shippers)
                );


            return View(model);
        }
    }
}