<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UrunDetay.aspx.cs" Inherits="MezunOlmamLazim.Consumer.UrunDetay" %>


       
 

<!DOCTYPE html>

<html lang="en">

<head>
    <link href="../Contentlerim/MenuTemplate/css/styles.css" rel="stylesheet" />

    <script src="../Contentlerim/MenuTemplate/js/jquery-1.11.1.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="../Contentlerim/TemplatemContent/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../Contentlerim/TemplatemContent/css/shop-homepage.css" rel="stylesheet" />
    <script src="../Contentlerim/TemplatemContent/js/jquery.js"></script>
    <title>Teknoshop</title>
    <!-- Bootstrap Core CSS -->
    <style type="text/css">
        /*Detail page*/
        .detailsImage {
            height: 400px;
            width: 300px;
            margin-right: 30px;
        }

        .detailsDescription {
            font-style: italic;
            width: 300px;
        }

        .detailsPrice {
            font-weight: bold;
            font-size: 24px;
            width: 200px;
        }
    </style>
   
</head>
<body>
    <form runat="server">
        <div class="container">
            <div class="row" >
                            
                <div class="col-md-12">
                    <div class="btn-group btn-group-lg btn-group-justified">
                        <a href="Gorunum.aspx" class="btn btn-primary">ANASAYFA</a>
                        <a href="#" class="btn btn-primary">FIRSAT ÜRÜNLERİ</a>
                        <a href=" YeniUrunler.aspx  " class="btn btn-primary">YENİ ÜRÜNLER</a>
                        <a href="#" class="btn btn-primary">MAĞAZALARIMIZ</a>
                        <a href="Contact.aspx" class="btn btn-primary">İLETİŞİM</a>
                       
                    </div>
                </div>

            </div>

            <div style="margin-top: 20px;">
            </div>
            <div class="row">
                <div class="col-md-12" style="text-align: left">
                    <div class="content">
                       <div class="wrapper">
                            <div style="margin-left:15px" class="col-md-2" ">
                                <button class="btn btn-primary btn-lg btn-group-justified container-fluid">Ürünler</button>
                            </div>
                         
                            <div class="col-md-8 input-group" style="margin-left:380px;" >
                                <input type="text" class="form-control" placeholder="aramak istediğiniz kelimeyi yazın.! ">
                                <span class="input-group-btn">
                                    <button class="btn btn-primary" type="button">Ara</button>
                                    <button class="btn btn-primary" type="button">Üye Giriş</button>
                                    <button class="btn btn-primary" type="button">Yeni Üye</button>
                                    <button class="btn btn-primary" type="button">Sepetim</button>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div style="height: 15px;"></div>
            <div class="row">
                <div class="col-md-12" style="text-align: left">
                    <div id="content">
                        <div class="wrapper">


                            <div class="panel panel-default">
                                      <div class="panel-body">
                                          <div class="row">

                                <div class="col-md-3">



                                    
                                       <asp:Label Text="" ID="LabelUrunAd" runat="server" />
                                          <asp:Label Text="" ID="LabelUrunFiyat" runat="server" />
                                          <asp:ImageButton class="img-thumbnail" Id="ImageButtonResim" runat="server" />
                                </div>



                                <div class="col-md-9"></div>

                                          </div>



                                      </div>
                            </div>                 
                        </div>
                    </div>
                </div>
            </div>
          
        </div>
    </form>

    <script>


    </script>
</body>
</html>


