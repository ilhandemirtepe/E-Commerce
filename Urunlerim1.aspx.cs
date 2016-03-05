using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MezunOlmamLazim.Admin
{
    public partial class Urunlerim1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetImages();

                //Check if product is being updated
                if (!String.IsNullOrWhiteSpace(Request.QueryString["id"]))
                {
                    int id = Convert.ToInt32(Request.QueryString["id"]);
                    FillForm(id);
                }
            }

        }
        protected void btnSubmit_Click(object sender, EventArgs e)//bu buton hem ekleme hemde gunceleme yapar
        {

            Urun product = CreateProduct();

            if (!String.IsNullOrWhiteSpace(Request.QueryString["id"]))
            {
                //urun  guncelleme için 
                int id = Convert.ToInt32(Request.QueryString["id"]);
                lblResult.Text = UpdateProduct(id, product);
            }
            else
            {        ///yeni urun eklemeye yarar
                lblResult.Text = InsertProduct(product);
            }
        }
        private void FillForm(int id) //seçilen ürünü guncelle 
        {
            try
            {

                Urun product = GetProduct(id);

                txtDescription.Text = product.UrunAciklama;
                txtName.Text = product.UrunAdi;
                txtPrice.Text = product.UrunFiyat.ToString();

                ddlImage.SelectedValue = product.UrunResim;
                ddlType.SelectedValue = product.UrunKategoriid.ToString();
            }
            catch (Exception ex)
            {
                lblResult.Text = ex.ToString();
            }



        }

        private void GetImages()
        {
            try
            {
                //Get all filepaths
                string[] images = Directory.GetFiles(Server.MapPath("~/UrunResimlerim"));//visul stdio da klasor açtimm yolunu verdim

                //Get all filenames and add them to an arraylist
                ArrayList imageList = new ArrayList();
                foreach (string image in images)
                {
                    string imageName = image.Substring(image.LastIndexOf(@"\", StringComparison.Ordinal) + 1);
                    imageList.Add(imageName);
                }

                //Set the arrayList as the dropdownview's datasource and refresh
                ddlImage.DataSource = imageList; //dropdownliste attim resimleri
                ddlImage.AppendDataBoundItems = true;
                ddlImage.DataBind();
            }
            catch (Exception e)
            {
                lblResult.Text = e.ToString();
            }
        }

        private Urun CreateProduct() //yeni bir urun eklemeye yarar
        {
            Urun product = new Urun();

            product.UrunAdi = txtName.Text;
            product.UrunFiyat = Convert.ToInt32(txtPrice.Text);
            product.UrunKategoriid = Convert.ToInt32(ddlType.SelectedValue);
            product.UrunAciklama = txtDescription.Text;
            product.UrunResim = ddlImage.SelectedValue;

            return product;
        }

        //VERITABANI ISLEMLERI

        public string InsertProduct(Urun product)
        {
            try
            {
                BitirmeDBEntities db = new BitirmeDBEntities();
                db.Uruns.Add(product);
                db.SaveChanges();
                return product.UrunAdi + "adlı ürün başarılı bir şekilde eklendi";
            }
            catch (Exception e)
            {
                return "Hatanız:" + e;
            }
        }

        public string UpdateProduct(int id, Urun product)
        {
            try
            {
                BitirmeDBEntities db = new BitirmeDBEntities();

                //Once ürün ıd bulmamız lazlım
                Urun p = db.Uruns.Find(id);
                p.UrunAdi = product.UrunAdi;
                p.UrunFiyat = product.UrunFiyat;
                p.UrunKategoriid = product.UrunKategoriid;
                p.UrunAciklama = product.UrunAciklama;
                p.UrunResim = product.UrunResim;

                db.SaveChanges();
                return product.UrunAdi + "adlı ürün başarılı bir şekilde  güncellendi";

            }
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }
        public string DeleteProduct(int id)
        {
            try
            {
                BitirmeDBEntities db = new BitirmeDBEntities();
                Urun product = db.Uruns.Find(id);
                db.Uruns.Attach(product);
                db.Uruns.Remove(product);
                db.SaveChanges();

                return product.UrunAdi + "adlı ürün başarılı bir şekilde  silindi";
            }
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }

        public Urun GetProduct(int id) //seçilen urun id  ye göre update yapmaya yarar
        {
            try
            {
                using (BitirmeDBEntities db = new BitirmeDBEntities())
                {
                    Urun product = db.Uruns.Find(id);
                    return product;
                }
            }
            catch (Exception e)
            {
                return null;
            }
        }

        public List<Urun> GetAllProducts()
        {
            try
            {
                using (BitirmeDBEntities db = new BitirmeDBEntities())
                {
                    List<Urun> products = (from x in db.Uruns
                                           select x).ToList();
                    return products;
                }
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        public List<Urun> GetProductsByType(int typeId)
        {
            try
            {
                using (BitirmeDBEntities db = new BitirmeDBEntities())
                {
                    List<Urun> products = (from x in db.Uruns
                                           where x.UrunKategoriid == typeId
                                           select x).ToList();
                    return products;
                }
            }
            catch (Exception)
            {
                return null;
            }
        }
    }
}