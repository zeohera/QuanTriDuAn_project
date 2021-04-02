using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using webMVC1.DAO;

namespace webMVC1.Controllers
{
    public class BlogController : Controller
    {
        // GET: Blog
        public ActionResult Index()
        {
            ViewBag.blog = new BlogDao().ListBlog(6);
            return View();
        }
        public ActionResult Blog_detail(long id)
        {
            var model = new BlogDao().GetByID(id);
            ViewBag.OurChef = new OurChefDao().ListOurChef(4);
            ViewBag.pro = new ProductDao().ListFooterT(4);
            ViewBag.cat = new ProductDao().ListCategory();
            return View(model);
        }
    }
}