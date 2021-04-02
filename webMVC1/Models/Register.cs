using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace webMVC1.Models
{
    public class Register
    {
        [Key]
        public long ID { set; get; }

        [Display(Name="Tên đăng nhập")] 
        [Required(ErrorMessage ="yêu cầu nhập tên đăng nhập")]
        public string UserName { set; get; }

        [Display(Name = "Mật khẩu")]
        [StringLength(20,MinimumLength =6,ErrorMessage ="độ dài ít nhất 6 ký tự")]
        [Required(ErrorMessage = "yêu càu nhập mật khẩu")]
        public string PassWord { set; get; }

        [Display(Name = "nhập lại mật khẩu")]
        [Compare("PassWord",ErrorMessage="xác nhận mật khẩu không đúng")]
        public string ConfirmPassWord { set; get; }

        [Display(Name = "Địa chỉ")]
        public string Address { set; get; }

        [Display(Name = "Email")]
        [Required(ErrorMessage = "yêu cầu nhập lại email email")]
        public string Email { set; get; }

        [Display(Name = "Điện thoại")]
        [Required(ErrorMessage = "yêu cầu nhập lại số điện thoại")]
        public string Phone { set; get; }

        [Display(Name = "Họ tên")]
        [Required(ErrorMessage = "nhập họ và tên")]
        public string Name { set; get; }


    }
}