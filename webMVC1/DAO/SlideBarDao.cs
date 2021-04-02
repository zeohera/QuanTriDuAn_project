using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using webMVC1.EF;
using PagedList;
namespace webMVC1.DAO
{
    public class SlideBarDao
    {
        database db = null;
        public SlideBarDao()
        {
            db = new database();
        }
        public Slidebar GetByID(long id) 
        {
            return db.Slidebar.Find(id);
        }
        public long Insert(Slidebar entity)
        {
            db.Slidebar.Add(entity);
            db.SaveChanges();
            return entity.ID;
        }
        public bool Update(Slidebar entity)
        {
            try
            {
                var slide = db.Slidebar.Find(entity.ID);
                slide.image = entity.image;
                slide.title = entity.title;
                slide.stastus = entity.stastus;

                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }

        }
        public bool Delete(long id)
        {
            try
            {
                var slide = db.Slidebar.Find(id);
                db.Slidebar.Remove(slide);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
        public Slidebar ViewDetail(long id)
        {
            return db.Slidebar.Find(id);
        }
        public IEnumerable<Slidebar> ListAllPaging(string searchString, int page, int pageSize)
        {
            IQueryable<Slidebar> model = db.Slidebar;
            if (!string.IsNullOrEmpty(searchString))
            {
                model = model.Where(x => x.title.Contains(searchString) || x.title.Contains(searchString));
            }
            return model.OrderByDescending(x => x.ID).ToPagedList(page, pageSize);
        }
        public List<Slidebar> ListSlide(int top)
        {
            return db.Slidebar.Where(x => x.stastus == true).OrderByDescending(x => x.ID).Take(top).ToList();
        }
    }
}