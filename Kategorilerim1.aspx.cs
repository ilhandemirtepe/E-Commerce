using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MezunOlmamLazim.Admin
{
    public partial class Kategorilerim1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            Kategori pt = CreateProductType();

            lblResult.Text = InsertProductType(pt);
        }

        private Kategori CreateProductType()
        {
            Kategori p = new Kategori();
            p.KategoriAdi = txtName.Text;
            p.SubKategoriid = Convert.ToInt32(txtSubKategory.Text);

            return p;
        }
        public string InsertProductType(Kategori productType)
        {
            try
            {
                BitirmeDBEntities db = new BitirmeDBEntities();
                db.Kategoris.Add(productType);
                db.SaveChanges();

                return productType.KategoriAdi + "başarılı bir şekilde eklendi";
            }
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }

        public string UpdateProductType(int id, Kategori productType)
        {
            try
            {
                BitirmeDBEntities db = new BitirmeDBEntities();
                Kategori p = db.Kategoris.Find(id);
                p.KategoriAdi = productType.KategoriAdi;
                p.SubKategoriid = productType.SubKategoriid;
                db.SaveChanges();
                return productType.KategoriAdi + "başarılı bir şekilde güncellendi";
            }
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }

        public string DeleteProductType(int id)
        {
            try
            {
                BitirmeDBEntities db = new BitirmeDBEntities();
                Kategori productType = db.Kategoris.Find(id);

                db.Kategoris.Attach(productType);
                db.Kategoris.Remove(productType);
                db.SaveChanges();

                return productType.KategoriAdi + "başarılı bir şekilde silindi";
            }
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }
    }
}