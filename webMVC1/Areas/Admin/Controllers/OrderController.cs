using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using webMVC1.DAO;
using webMVC1.EF;
namespace webMVC1.Areas.Admin.Controllers
{
    public class OrderController : BaseController
    {
        // GET: Admin/Order
        public ActionResult Index(string searchString, int page = 1, int pageSize = 10)
        {
            var dao = new OderDao();
            var model = dao.ListAllPaging(searchString, page, pageSize);
            ViewBag.SearchString = searchString;
            return View(model);
        }
        public ActionResult order_detail(long id)
        {
            var dao1= new OderDao();
            var dao = new OderDetailDao();
            var model = dao.viewOrderDetails(id);
            ViewBag.order = dao1.order(id);
            return View(model);
        }
        [HttpPost]
        public JsonResult check_status(long id)
        {
            var order = new Order();
            var dao = new OderDao();
            var model = dao.order(id);
            foreach(var item in model)
            {
                var x = order.ID == item.ID;
                if (x == true)
                {
                    item.ID = 0;
                }
            }

            return Json(new
            {
                status = true
            });
        }
    }
}