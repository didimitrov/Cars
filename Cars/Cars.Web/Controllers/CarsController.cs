using System.Linq;
using System.Web.Mvc;
using Cars.Data.Repositories;
using Cars.Models;
using Cars.Web.Models;

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

        [HttpGet]        
        public ActionResult SearchResult(CarSearchModel model)
        {
            ViewBag.Shippers = this.Data.Shippers.All();
            ViewBag.searchString = model.Description;

            // Get Cars
                model.Cars = _cars.All()
                    .Where(x =>
                            (model.Description == null || x.Description.Contains(model.Description))
                            && (model.Shippers == null || x.ShipperId == model.Shippers))
                    .OrderBy(x => x.Year)                    
                    .ToList();

                // total records for paging
                model.TotalRecords = _cars.All()
                    .Count(x =>
                        (model.Description == null || x.Description.Contains(model.Description))
                        && (model.Shippers == null || x.ShipperId == model.Shippers));

                return View(model);
        }

        [HttpGet]
        public ActionResult Create()
        {
          // ViewBag.Shippers = Data.Shippers.All();
            AddShippersToViewBag();
            return View(new CarInputModel());
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(CarInputModel model)
        {
            if (ModelState.IsValid && model!=null)
            {
                var allShippersNames = Data.Shippers.All().Select(x => x.Name);

                if (model.ShipperName!=null && !allShippersNames.Contains(model.ShipperName))
                {
                    var newShipper = new Shipper
                    {
                        Name = model.ShipperName
                    };
                    Data.Shippers.Add(newShipper);
                    Data.SaveChanges();

                    var newCar = new Car
                    {
                        Id = model.Id,
                        Brand = model.Brand,
                        Description = model.Description,
                        Power = model.Power,
                        ShipperId = newShipper.Id,
                        Year = model.Year
                    };
                    _cars.Add(newCar);
                    _cars.SaveChanges();

                    return RedirectToAction("Index");
                }

                if (allShippersNames.Contains(model.ShipperName))
                {
                    var shipperId = Data.Shippers.All().SingleOrDefault(x => x.Name == model.ShipperName).Id;
                    var newCar = new Car
                    {
                        Id = model.Id,
                        Brand = model.Brand,
                        Description = model.Description,
                        Power = model.Power,
                        ShipperId = shipperId,
                        Year = model.Year
                    };

                    _cars.Add(newCar);
                    _cars.SaveChanges();

                    return RedirectToAction("Index");
                }                
            }
            return View();
        }

        private void AddShippersToViewBag()
        {
            var shippers = this.Data.Shippers.All();
            this.ViewBag.Shippers = new SelectList(shippers, "Id", "Name");
        }
        
    }
}