using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MezunOlmamLazim.Admin
{
    public partial class AdminPanel1 : System.Web.UI.Page
    {
       
              protected void Page_Load(object sender, EventArgs e)
        {
            Panel_Kategori.Visible = false;
            Panel_Urun.Visible = false;
        }

        protected void btn_Kategoriler_Click(object sender, EventArgs e)
        {
            Panel_Kategori.Visible = true;
            Panel_Urun.Visible = false;

        }

        protected void btn_Urunler_Click(object sender, EventArgs e)
        {
            Panel_Kategori.Visible = false;
            Panel_Urun.Visible = true;
        }

        protected void btn_Urunler_UrunEkle_Click(object sender, EventArgs e)
        {
            Panel_Kategori.Visible = false;
            Panel_Urun.Visible = false;
            Response.Redirect("/Admin/Urunlerim1.aspx");
        }

        protected void btn_Urunler_UrunDuzenle_Click(object sender, EventArgs e)
        {
            Panel_Kategori.Visible = false;
            Panel_Urun.Visible = false;
            Response.Redirect("/Admin/UrunVeKategoriDuzenle1.aspx");
        }

        protected void btn_Kategoriler_KategoriEkle_Click(object sender, EventArgs e)
        {
            Panel_Kategori.Visible = false;
            Panel_Urun.Visible = false;
            Response.Redirect("/Admin/Kategorilerim1.aspx");
        }

        protected void btn_Kategoriler_KategoriDuzenle_Click(object sender, EventArgs e)
        {
            Panel_Kategori.Visible = false;
            Panel_Urun.Visible = false;
            Response.Redirect("/Admin/UrunVeKategoriDuzenle1.aspx");

        }
        
    }
}