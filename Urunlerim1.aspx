<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Urunlerim1.aspx.cs" Inherits="MezunOlmamLazim.Admin.Urunlerim1" %>

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
                                <h3 style="text-align: center"><span style="text-align: center" class="label label-pill label-primary">Ürün Ekleme  Sayfası </span></h3>
                            </div>
                            <div class="panel-body">
                                <br />
                                <br />
                                <div class="col-lg-9">
                                    <div class="col-md-4">
                                        <asp:Label ID="lblResult" ForeColor="#0000ff" runat="server" CssClass="col-md-12 control-label"></asp:Label>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:Label Text="Ürün  Adı:" runat="server" Height="25" Width="150" />
                                        <asp:Label Text="Kategori Seçiniz:" runat="server" Height="25" Width="150" />
                                        <asp:Label Text="Ürün Fiyat:" runat="server" Height="25" Width="150" />
                                        <asp:Label Text="Resim Seç:" runat="server" Height="25" Width="150" />
                                        <asp:Label Text="Açıklama:" runat="server" Height="25" Width="150" />

                                    </div>
                                    <div class="col-md-3">
                                        <asp:TextBox ID="txtName" runat="server" Height="25" Width="150"></asp:TextBox>
                                        <asp:DropDownList ID="ddlType" runat="server" Height="25" Width="150" DataSourceID="SqlDataSource1" DataTextField="KategoriAdi" DataValueField="Kategoriid">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BitirmeDBConnectionString %>" SelectCommand="SELECT * FROM [Kategori] ORDER BY [KategoriAdi]"></asp:SqlDataSource>
                                        <asp:TextBox ID="txtPrice" Height="25" runat="server" Width="150"></asp:TextBox>
                                        <asp:DropDownList ID="ddlImage" Height="25" Width="150" runat="server">
                                        </asp:DropDownList>
                                        <asp:TextBox ID="txtDescription" Width="150" runat="server" Height="50px" TextMode="MultiLine"></asp:TextBox>

                                        <asp:Button ID="btnSubmit" runat="server" Text="Kaydet" OnClick="btnSubmit_Click" CssClass="btn btn-success" />
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
