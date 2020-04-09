using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CafeAPI.Models;

namespace CafeAPI.DAO
{
    public class LOAISPDAO
    {
        private CafeDbContext db = null;
        public LOAISPDAO()
        {
            db = new CafeDbContext();
        }
        public List<HOMELOAISP> GetNewProduct()
        {
            var product = (from p in db.LOAISP.OrderByDescending(x => x.NGAYTAO)
                           select new HOMELOAISP()
                           {
                               ID = p.ID,
                               TEN = p.TEN,
                               MOTA = p.MOTA,
                               ANH = p.ANH,
                               NGAYTAO = p.NGAYTAO,
                               HANGSX = ((from z in db.HANGSX
                                          where z.ID == p.HANGSX_ID
                                          select new
                                          {
                                              z.TEN
                                          }).FirstOrDefault().TEN),

                               GIA = (from x in db.PRICE
                                      from y in db.SANPHAM
                                      where y.LOAISP_ID == p.ID && x.SANPHAM_ID == y.ID
                                      orderby x.GIABAN
                                      select new
                                      {
                                          x.GIABAN
                                      }).FirstOrDefault().GIABAN
                           }).ToList();
            var model = product.ToList().Take(6);
            return model.ToList();
        }
    }
    public class HOMELOAISP
    {
        public int ID { get; set; }
        public string TEN { get; set; }
        public string ANH { get; set; }
        public string MOTA { get; set; }
        public DateTime? NGAYTAO { get; set; }
        public string HANGSX { get; set; }
        public int? GIA { get; set; }
        public HOMELOAISP() { }
        public HOMELOAISP(string TEN, string ANH, string MOTA, DateTime? NGAYTAO, string HANGSX, int? GIA )
        {
            this.TEN = TEN;
            this.ANH = ANH;
            this.MOTA = MOTA;
            this.NGAYTAO = NGAYTAO;
            this.HANGSX = HANGSX;
            this.GIA = GIA;
        }
    }
}