using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using webMVC1.EF;
using PagedList;
namespace webMVC1.DAO
{
    public class BlogDao
    {
        database db = null;
        public BlogDao()
        {
            db = new database();
        }
        public List<Blog> ListBlog(int top)
        {
            return db.Blog.OrderByDescending(x => x.bl_create).Take(top).ToList();
        }
        public Blog GetByID(long id)
        {
            return db.Blog.Find(id);
        }
        public long Insert(Blog entity)
        {
            db.Blog.Add(entity);
            db.SaveChanges();
            return entity.bl_id;
        }
        public bool Update(Blog entity)
        {
            try
            {
                var blog = db.Blog.Find(entity.bl_id);
                blog.bl_name = entity.bl_name;
                blog.bl_create = DateTime.Now;
                blog.bl_desc1 = entity.bl_desc1;
                blog.bl_desc2 = entity.bl_desc2;
                blog.bl_desc3 = entity.bl_desc3;
                blog.bl_title = entity.bl_title;
                blog.bl_image = entity.bl_image;

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
                var blog = db.Blog.Find(id);
                db.Blog.Remove(blog);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
        public Blog ViewDetail(long id)
        {
            return db.Blog.Find(id);
        }
        public IEnumerable<Blog> ListAllPaging(string searchString, int page, int pageSize)
        {
            IQueryable<Blog> model = db.Blog;
            if (!string.IsNullOrEmpty(searchString))
            {
                model = model.Where(x => x.bl_name.Contains(searchString) || x.bl_name.Contains(searchString));
            }
            return model.OrderByDescending(x => x.bl_create).ToPagedList(page, pageSize);
        }
        public List<Blog> listblogs()
        {
            return db.Blog.OrderByDescending(x=>x.bl_create).ToList();
        }
    }
}