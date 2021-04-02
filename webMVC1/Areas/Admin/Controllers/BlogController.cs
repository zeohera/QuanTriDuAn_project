using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using webMVC1.DAO;
using webMVC1.EF;

namespace webMVC1.Areas.Admin.Controllers
{
    public class BlogController : BaseController
    {
        // GET: Admin/Blog
        public ActionResult Index(string searchString, int page = 1, int pageSize = 10)
        {
            var dao = new BlogDao();
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
            var blog = new BlogDao().ViewDetail(id);
            return View(blog);
        }
        [HttpPost]
        public ActionResult Create(Blog model)
        {
            if (ModelState.IsValid)
            {
                var dao = new BlogDao();

                long id = dao.Insert(model);
                if (id > 0)
                {
                    return RedirectToAction("Index", "Blog");
                }
                else
                {
                    ModelState.AddModelError("", "Thêm tin tức thành công");
                }
            }
            return View("Index");
        }
        [HttpPost]
        public ActionResult Edit(Blog model)
        {
            if (ModelState.IsValid)
            {
                var dao = new BlogDao();

                if (!string.IsNullOrEmpty(model.bl_name))
                {


                    var result = dao.Update(model);
                    if (result)
                    {
                        return RedirectToAction("Index", "Blog");
                    }
                    else
                    {
                        ModelState.AddModelError("", "Cập nhập bài viết thành công");
                    }
                }
            }
            return View();
        }
        [HttpDelete]
        public ActionResult Delete(int id)
        {
            new BlogDao().Delete(id);
            return RedirectToAction("Index");
        }

    }
}