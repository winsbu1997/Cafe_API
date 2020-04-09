namespace CafeAPI.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DONHANG")]
    public partial class DONHANG
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public DONHANG()
        {
            CHITIETDONHANGs = new HashSet<CHITIETDONHANG>();
        }

        public int ID { get; set; }

        [Column(TypeName = "date")]
        public DateTime? NGAYDAT { get; set; }

        [StringLength(50)]
        public string TENNGUOINHAN { get; set; }

        [StringLength(15)]
        public string SDT { get; set; }

        [StringLength(100)]
        public string DIACHI { get; set; }

        public int? TONGTIEN { get; set; }

        public int? TRANGTHAI_ID { get; set; }

        public int? KHACHHANG_ID { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CHITIETDONHANG> CHITIETDONHANGs { get; set; }

        public virtual NGUOIDUNG NGUOIDUNG { get; set; }

        public virtual TRANGTHAIDH TRANGTHAIDH { get; set; }
    }
}
