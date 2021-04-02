namespace webMVC1.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Blog")]
    public partial class Blog
    {
        [Key]
        public int bl_id { get; set; }

        [StringLength(50)]
        public string bl_name { get; set; }

        [StringLength(50)]
        public string bl_title { get; set; }

        [Column(TypeName = "text")]
        public string bl_desc1 { get; set; }

        [Column(TypeName = "text")]
        public string bl_desc2 { get; set; }

        [StringLength(50)]
        public string bl_desc3 { get; set; }

        public DateTime? bl_create { get; set; }
        [StringLength(50)]
        public string bl_image { get; set; }
    }
}
