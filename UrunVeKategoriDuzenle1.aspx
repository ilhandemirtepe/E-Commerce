<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="UrunVeKategoriDuzenle1.aspx.cs" Inherits="MezunOlmamLazim.Admin.UrunVeKategoriDuzenle1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




    <!DOCTYPE html>

    <html>
    <head>
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
                                <h3 style="text-align: center"><span style="text-align: center" class="label label-pill label-primary">Ürün ve Kategorileri Silme ,Düzenleme İşlemleri </span></h3>
                            </div>
                            <div class="panel-body">
                                <div class="row">

                                    <div class="col-md-12">
                                        <div>
                                            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Admin/Urunlerim1.aspx">Yeni Ürün Ekle</asp:LinkButton>
                                        </div>
                                        <asp:GridView ID="GridView_Urunler" runat="server" DataSourceID="sdsUrunlerim" OnRowEditing="GridView_Urunler_RowEditing" Width="100%" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Urunid">
                                            <Columns>
                                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                                <asp:BoundField DataField="Urunid" HeaderText="Urunid" InsertVisible="False" ReadOnly="True" SortExpression="Urunid" />
                                                <asp:BoundField DataField="UrunKategoriid" HeaderText="UrunKategoriid" SortExpression="UrunKategoriid" />
                                                <asp:BoundField DataField="UrunAdi" HeaderText="UrunAdi" SortExpression="UrunAdi" />
                                                <asp:BoundField DataField="UrunFiyat" HeaderText="UrunFiyat" SortExpression="UrunFiyat" />
                                                <asp:BoundField DataField="UrunAciklama" HeaderText="UrunAciklama" SortExpression="UrunAciklama" />
                                                <asp:BoundField DataField="UrunResim" HeaderText="UrunResim" SortExpression="UrunResim" />
                                            </Columns>

                                        </asp:GridView>
                                        <asp:SqlDataSource ID="sdsUrunlerim" runat="server" ConnectionString="<%$ ConnectionStrings:BitirmeDBConnectionString %>" DeleteCommand="DELETE FROM [Urun] WHERE [Urunid] = @Urunid" InsertCommand="INSERT INTO [Urun] ([UrunKategoriid], [UrunAdi], [UrunFiyat], [UrunAciklama], [UrunResim]) VALUES (@UrunKategoriid, @UrunAdi, @UrunFiyat, @UrunAciklama, @UrunResim)" SelectCommand="SELECT * FROM [Urun]" UpdateCommand="UPDATE [Urun] SET [UrunKategoriid] = @UrunKategoriid, [UrunAdi] = @UrunAdi, [UrunFiyat] = @UrunFiyat, [UrunAciklama] = @UrunAciklama, [UrunResim] = @UrunResim WHERE [Urunid] = @Urunid">
                                            <DeleteParameters>
                                                <asp:Parameter Name="Urunid" Type="Int32" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="UrunKategoriid" Type="Int32" />
                                                <asp:Parameter Name="UrunAdi" Type="String" />
                                                <asp:Parameter Name="UrunFiyat" Type="Int32" />
                                                <asp:Parameter Name="UrunAciklama" Type="String" />
                                                <asp:Parameter Name="UrunResim" Type="String" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="UrunKategoriid" Type="Int32" />
                                                <asp:Parameter Name="UrunAdi" Type="String" />
                                                <asp:Parameter Name="UrunFiyat" Type="Int32" />
                                                <asp:Parameter Name="UrunAciklama" Type="String" />
                                                <asp:Parameter Name="UrunResim" Type="String" />
                                                <asp:Parameter Name="Urunid" Type="Int32" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                        <br />
                                        <div class="col-md-9">

                                            <asp:LinkButton PostBackUrl="~/Admin/Kategorilerim1.aspx" ID="LinkButton2" runat="server">Yeni Kategori Ekle</asp:LinkButton>




                                            <br />
                                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Kategoriid" DataSourceID="SqlDataSource1" Width="473px">
                                                <Columns>
                                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                                    <asp:BoundField DataField="Kategoriid" HeaderText="Kategoriid" InsertVisible="False" ReadOnly="True" SortExpression="Kategoriid" />
                                                    <asp:BoundField DataField="KategoriAdi" HeaderText="KategoriAdi" SortExpression="KategoriAdi" />
                                                    <asp:BoundField DataField="SubKategoriid" HeaderText="SubKategoriid" SortExpression="SubKategoriid" />
                                                </Columns>
                                            </asp:GridView>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BitirmeDBConnectionString %>" DeleteCommand="DELETE FROM [Kategori] WHERE [Kategoriid] = @Kategoriid" InsertCommand="INSERT INTO [Kategori] ([KategoriAdi], [SubKategoriid]) VALUES (@KategoriAdi, @SubKategoriid)" SelectCommand="SELECT * FROM [Kategori]" UpdateCommand="UPDATE [Kategori] SET [KategoriAdi] = @KategoriAdi, [SubKategoriid] = @SubKategoriid WHERE [Kategoriid] = @Kategoriid">
                                                <DeleteParameters>
                                                    <asp:Parameter Name="Kategoriid" Type="Int32" />
                                                </DeleteParameters>
                                                <InsertParameters>
                                                    <asp:Parameter Name="KategoriAdi" Type="String" />
                                                    <asp:Parameter Name="SubKategoriid" Type="Int32" />
                                                </InsertParameters>
                                                <UpdateParameters>
                                                    <asp:Parameter Name="KategoriAdi" Type="String" />
                                                    <asp:Parameter Name="SubKategoriid" Type="Int32" />
                                                    <asp:Parameter Name="Kategoriid" Type="Int32" />
                                                </UpdateParameters>
                                            </asp:SqlDataSource>
                                            <br />
                                        </div>
                                    </div>
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
