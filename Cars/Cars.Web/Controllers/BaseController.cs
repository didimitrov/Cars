using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using Cars.Data.Uow;
using Cars.Models;

namespace Cars.Web.Controllers
{
    public class BaseController : Controller
    {
        protected IUowData Data;

        public BaseController(IUowData data)
        {
            this.Data = data;
        }

        public BaseController()
            : this(new UowData())
        {
        }

        //protected ApplicationUser UserProfile { get; private set; }

        //protected override IAsyncResult BeginExecute(RequestContext requestContext, AsyncCallback callback, object state)
        //{
        //    this.UserProfile = this.Data.Users.All()
        //        .FirstOrDefault(u => u.UserName == requestContext.HttpContext.User.Identity.Name);

        //    return base.BeginExecute(requestContext, callback, state);
        //}
    }
}