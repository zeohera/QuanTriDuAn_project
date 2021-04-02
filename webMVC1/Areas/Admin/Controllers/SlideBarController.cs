using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using webMVC1.DAO;
using webMVC1.EF;

namespace webMVC1.Areas.Admin.Controllers
{
    public class SlideBarController : Controller
    {
        // GET: Admin/SlideBar
        public ActionResult Index(string searchString, int page = 1, int pageSize = 10)
        {
            var dao = new SlideBarDao();
            var model = dao.ListAllPaging(searchString, page, pageSize);
            ViewBag.SearchString = searchString;
            return View(model);
        }
        [HttpGet]
        public ActionResult Create()
        {
            return View();
        }
        [HttpGet]
        public ActionResult Edit(int id)
        {
            var user = new SlideBarDao().ViewDetail(id);
            return View(user);
        }
        [HttpPost]
        public ActionResult Create(Slidebar model)
        {
            if (ModelState.IsValid)
            {
                var dao = new SlideBarDao();

                long id = dao.Insert(model);
                if (id > 0)
                {
                    return RedirectToAction("Index", "SlideBar");
                }
                else
                {
                    ModelState.AddModelError("", "Thêm Quảng cáo thành công");
                }
            }
            return View("Index");
        }
        [HttpPost]
        public ActionResult Edit(Slidebar model)
        {
            if (ModelState.IsValid)
            {
                var dao = new SlideBarDao();

                if (!string.IsNullOrEmpty(model.title))
                {


                    var result = dao.Update(model);
                    if (result)
                    {
                        return RedirectToAction("Index", "SlideBar");
                    }
                    else
                    {
                        ModelState.AddModelError("", "Cập nhập quảng cáo thành công thành công");
                    }
                }
            }
            return View();
        }
        [HttpDelete]
        public ActionResult Delete(int id)
        {
            new SlideBarDao().Delete(id);
            return RedirectToAction("Index");
        }
    }
}