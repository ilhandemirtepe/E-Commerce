<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Kategorilerim1.aspx.cs" Inherits="MezunOlmamLazim.Admin.Kategorilerim1" %>

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
                                <h3 style="text-align: center"><span style="text-align: center" class="label label-pill label-primary">Kategori Ekleme Sayfası </span></h3>
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-9">
                                        <%-- <div class="col-md-4">
                                </div>
                                <div class="col-md-2">
                                    <asp:Label Text="Kategori Adı:" runat="server" CssClass="col-md-12 control-label" />
                                    <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Kaydet" CssClass="btn btn-success " />
                                </div>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtName" runat="server" CssClass="textBox"></asp:TextBox>        
                                </div>
                                <div class="col-md-2">
                                      <asp:Label ID="lblResult" runat="server" CssClass="control-label"></asp:Label>
                                </div>--%>
                                        <table style="margin-left: 300px;">
                                            <tr>
                                                <td>
                                                    <asp:Label Text="Kategori Adı:" runat="server" CssClass="col-md-12 control-label" /></td>
                                                <td>
                                                    <asp:TextBox ID="txtName" runat="server" CssClass="textBox"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label Text="0 Gir" runat="server" CssClass="col-md-12 control-label" /></td>
                                                <td>
                                                    <asp:TextBox ID="txtSubKategory" runat="server" CssClass="textBox"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td></td>
                                                <td>
                                                    <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Kaydet" CssClass="btn btn-success " /></td>

                                            </tr>
                                            <tr>
                                                <td></td>
                                                <td>
                                                    <asp:Label ID="lblResult" runat="server" CssClass="control-label"></asp:Label></td>
                                            </tr>
                                        </table>
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
