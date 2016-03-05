using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MezunOlmamLazim.Admin
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnKayit_Click(object sender, EventArgs e)
        {
         
            BitirmeDBEntities db = new BitirmeDBEntities();
            string query = (from c in db.AdminTables
                            where c.UserName ==txtKullaniciAdi.Text  && c.AdminPassword == txtSifre.Text
                            select c.AdminName).FirstOrDefault();
            if (query != null)
            {
                Response.Redirect("/Admin/AdminPanel1.aspx");
            }
            else
                lblHata.Text = "kullanıcı adı veya şifre yanlış";
        }


    }
}