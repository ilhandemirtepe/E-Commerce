using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace MezunOlmamLazim.Consumer
{
    public partial class Anasayfa : System.Web.UI.Page
    {
        BitirmeDBEntities db = new BitirmeDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            KategoriListRepeater.DataSource = db.Kategoris.ToList();
            KategoriListRepeater.DataBind();
        }

        [System.Web.Services.WebMethod]
        public static string UrunYukle(int kategoriId)
        {
            BitirmeDBEntities db1 = new BitirmeDBEntities();
            //tablo  yapısı oluşturuyorum Dataset ile XML formatında
            //Datasetler genel olarak veritabanı ile bağlantısı kesilmiş verileri tutmakta kullanılır.
            DataSet ds = new DataSet("myDataset");  
            ds.Tables.Add(new DataTable());
            ds.Tables[0].Columns.Add(new DataColumn("UrunId"));
            ds.Tables[0].Columns.Add(new DataColumn("UrunAdi"));
            ds.Tables[0].Columns.Add(new DataColumn("UrunFiyat"));
            ds.Tables[0].Columns.Add(new DataColumn("UrunResim"));
            var urunler = db1.Uruns.Where(m => m.UrunKategoriid == kategoriId).ToList();
            foreach (var item in urunler)
            {
                DataRow dr = ds.Tables[0].NewRow();  //Datatable satırlarıdır
                dr["UrunId"] = item.Urunid;
                dr["UrunAdi"] = item.UrunAdi;
                dr["UrunFiyat"] = item.UrunFiyat;
                dr["UrunResim"] = item.UrunResim;
                ds.Tables[0].Rows.Add(dr); //bir tane tablo olduğu için 0 aldık
            }
            return ds.GetXml();
        }
    }
}