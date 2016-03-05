<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminPanel1.aspx.cs" Inherits="MezunOlmamLazim.Admin.AdminPanel1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title></title>
        <link href="../Contentlerim/BootstrapContent/css/bootstrap.css" rel="stylesheet" />
    </head>
    <body>
        <form id="form1" runat="server">
            <div class="container">
                <article class="module width_full">
                    
                    <div class="col-md-12">
                        <div class="panel panel-default" style="margin-top: 80px;">
                            <div class="panel-heading">
                                <h3 style="text-align: center"><span style="text-align: center" class="label label-pill label-primary">İşlemler </span></h3>
                            </div>
                            <div class="panel-body">
                                <div style="text-align: center" class="well">
                                    <asp:Button ID="btn_Kategoriler" OnClick="btn_Kategoriler_Click" runat="server" Text="Kategori İşlemleri" CssClass="btn btn-primary btn-lg" />
                                    <asp:Button ID="btn_Urunler" OnClick="btn_Urunler_Click" runat="server" Text="Ürün İşlemleri" CssClass="btn btn-primary btn-lg" />
                                    <br />
                                    <br />
                                    <asp:Panel ID="Panel_Urun" runat="server">
                                        <asp:Button ID="btn_Urunler_UrunEkle" OnClick="btn_Urunler_UrunEkle_Click" runat="server" Text="Ürün Ekle" CssClass="btn btn-primary btn-lg" />
                                        <asp:Button ID="btn_Urunler_UrunDuzenle" OnClick="btn_Urunler_UrunDuzenle_Click" runat="server" Text="Ürün Düzenle" CssClass="btn btn-primary btn-lg" />

                                    </asp:Panel>
                                    <asp:Panel ID="Panel_Kategori" runat="server">
                                        <asp:Button ID="btn_Kategoriler_KategoriEkle" OnClick="btn_Kategoriler_KategoriEkle_Click" runat="server" Text="Kategori Ekle" CssClass="btn btn-primary btn-lg" />
                                        <asp:Button ID="btn_Kategoriler_KategoriDuzenle" OnClick="btn_Kategoriler_KategoriDuzenle_Click" runat="server" Text="Kategori Düzenle" CssClass="btn btn-primary btn-lg" />

                                    </asp:Panel>
                                </div>
                            </div>
                        </div>
                    </div>
                </article>
            </div>

        </form>
    </body>
    </html>
</asp:Content>
