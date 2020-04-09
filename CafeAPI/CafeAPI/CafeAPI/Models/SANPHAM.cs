namespace CafeAPI.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("SANPHAM")]
    public partial class SANPHAM
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public SANPHAM()
        {
            BAIBAOs = new HashSet<BAIBAO>();
            BINHLUANs = new HashSet<BINHLUAN>();
            CHITIETDONHANGs = new HashSet<CHITIETDONHANG>();
            CHITIETNHAPHANGs = new HashSet<CHITIETNHAPHANG>();
            PRICEs = new HashSet<PRICE>();
            THONGKEs = new HashSet<THONGKE>();
        }

        public int ID { get; set; }

        public int? KHOILUONG { get; set; }

        [StringLength(200)]
        public string ANH { get; set; }

        [Column(TypeName = "ntext")]
        public string MOTA { get; set; }

        public int? SOLUONG { get; set; }

        public int? LOAISP_ID { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BAIBAO> BAIBAOs { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BINHLUAN> BINHLUANs { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CHITIETDONHANG> CHITIETDONHANGs { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CHITIETNHAPHANG> CHITIETNHAPHANGs { get; set; }

        public virtual LOAISP LOAISP { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PRICE> PRICEs { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<THONGKE> THONGKEs { get; set; }
    }
}
