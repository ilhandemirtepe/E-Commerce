<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="MezunOlmamLazim.Admin.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="AdminTemplate/AdminLoginContent/StyleSheet1.css" rel="stylesheet" />
    <script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
</head>

<body>

    <section class="container">
        <div class="login">
            <h1>Admin Login</h1>

            <form action="/" runat="server" method="post">
                <asp:TextBox ID="txtKullaniciAdi" placeholder="kullanıcı adınızı giriniz" runat="server" />
                <asp:TextBox ID="txtSifre" placeholder="şifrenizi  giriniz" runat="server" TextMode="Password" />

                <asp:Button ID="btnKayit" Text="Giriş" runat="server" OnClick="btnKayit_Click" />
                <asp:Label Text="" ID="lblHata" runat="server" />

            </form>
        </div>
    </section>





</body>
</html>
