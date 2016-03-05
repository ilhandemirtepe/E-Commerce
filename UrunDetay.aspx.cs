using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MezunOlmamLazim.Consumer
{
    public partial class UrunDetay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UrunGetir();
        }

        private void UrunGetir()
        {
            if (!String.IsNullOrEmpty(Request.QueryString["id"]))
            {
                int id = Convert.ToInt32(Request.QueryString["id"]);
                try
                {
                    using (BitirmeDBEntities db = new BitirmeDBEntities())
                    {
                        Urun product = db.Uruns.Find(id);
                        LabelUrunAd.Text = product.UrunAdi;
                        LabelUrunFiyat.Text = product.UrunFiyat.ToString();
                        ImageButtonResim.ImageUrl="~/UrunResimlerim/" +product.UrunResim;
                    }
                }
                catch (Exception ex)
                {
                }
            }
        }
    }
}