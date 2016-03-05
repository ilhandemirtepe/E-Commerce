

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="MezunOlmamLazim.Consumer.Anasayfa" %>

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
        .thumbnail {
            width: 140px;
            height: 175px;
            text-align: center;
           
        }

      
    </style>
    <script type="text/javascript">
        $(function () {
            $jobslist = $('#jobs-list ul li a');

            $($jobslist).on('click', function (e) {
                e.preventDefault();
                var newcontent = $(this).attr('href');

                if (!$(this).hasClass('active')) {
                    $('#jobs-list ul li a.active').removeClass('active');
                }
                $(this).addClass('active');

                if (!$(newcontent).hasClass('displayed')) {
                    $('.jobitem.displayed').removeClass('displayed');
                    $(newcontent).addClass('displayed');
                }
            });
        });
    </script>
    <script>
        $(document).ready(function () {
            $("#menuler li").click(function () {
                var kategoriNumara = $(this).attr("id");
                $.ajax({
                    type: 'POST',
                    url: 'Anasayfa.aspx/UrunYukle',
                    data: '{ "kategoriId":' + kategoriNumara + ' }',
                    contentType: 'application/json; charset=utf-8',
                    dataType: 'json',
                    success: function (result) {
                        OnSuccess(result.d);
                    },
                    error: function () {
                        alert('Talep esnasında sorun oluştu. Yeniden deneyin');
                    }
                });
            });

            function OnSuccess(response) {
                $("#urunler").html("");
                var urunsatir = "";
                var urunSayisi = response.split("Table1").length - 13;
                if (urunSayisi < 0)
                    urunSayisi = 1;
                else if (urunSayisi == 1)
                    urunSayisi = 2;


                if (window.DOMParser) {   //diğer tarayıcılar
                    parser = new DOMParser();
                    xmlDoc = parser.parseFromString(response, "text/xml");
                    for (var i = 0; i < urunSayisi; i++) {
                        urunsatir += "<div class='col-sm-2 col-lg-2 col-md-2' ><div  class='thumbnail'>";
                        urunsatir += "<img src='../UrunResimlerim/" + xmlDoc.getElementsByTagName("UrunResim")[i].childNodes[0].nodeValue + "' />";
                        urunsatir += "<h4 <br /><a href='UrunDetay.aspx?id=" + xmlDoc.getElementsByTagName("UrunId")[i].childNodes[0].nodeValue + "'>" + xmlDoc.getElementsByTagName("UrunAdi")[i].childNodes[0].nodeValue + "</a>";
                        urunsatir += "<div class='caption'><h4 class='pull-right'  <br />" + xmlDoc.getElementsByTagName("UrunFiyat")[i].childNodes[0].nodeValue + "TL  <br /> </h4>";
                        urunsatir += "</h4><div class='ratings'><p class='pull-right'><i></i>";
                        //urunsatir += "<i>Sepete Ekle</i>";    
                        urunsatir += "<img src='/Contentlerim/Mytemplate/Shopping.gif' />"
                        urunsatir += "</i></p></div></div></div></div>";
                    }

                }
                else // Internet Explorer
                {
                    xmlDoc = new ActiveXObject("Microsoft.XMLDOM");
                    xmlDoc.async = false;
                    xmlDoc.loadXML(response);
                    for (var i = 0; i < urunSayisi; i++) {
                        urunsatir += "<div class='col-sm-2 col-lg-2 col-md-2' ><div  class='thumbnail'>";

                        urunsatir += "<img src='../UrunResimlerim/" + xmlDoc.getElementsByTagName("UrunResim")[i].childNodes[0].nodeValue + "' />";
                        urunsatir += "<h4 <br /><a href='UrunDetay.aspx?id=" + xmlDoc.getElementsByTagName("UrunId")[i].childNodes[0].nodeValue + "'>" + xmlDoc.getElementsByTagName("UrunAdi")[i].childNodes[0].nodeValue + "</a>";
                        urunsatir += "<div class='caption'><h4 class='pull-right'  <br />" + xmlDoc.getElementsByTagName("UrunFiyat")[i].childNodes[0].nodeValue + "TL  <br /> </h4>";


                        urunsatir += "</h4><div class='ratings'><p class='pull-right'><i></i>";
                        //urunsatir += "<i>Sepete Ekle</i>";    
                        urunsatir += "<img src='/Contentlerim/Mytemplate/Shopping.gif' />"
                        urunsatir += "</i></p></div></div></div></div>";

                    }
                }

                $("#urunler").append(urunsatir);
                urunsatir = "";
            }
        });
    </script>
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
                            <div id="jobs" class="clearfix">
                                <div id="jobs-list">
                                    <ul id="menuler">
                                        <asp:Repeater runat="server" ID="KategoriListRepeater">
                                            <ItemTemplate>
                                                
                                                <li class="btn btn-primary btn-group-justified" id="<%# Eval("Kategoriid") %>"><%# Eval("KategoriAdi") %> </li>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </ul>
                                </div>
                                <div id="job-info">                                   <div id="job1" class="jobitem displayed">
                                      <ul id="urunler"></ul>
                                   </div><!-- @end #job1 -->
                               </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
          
        </div>
    </form>

    <script>


        $(function () {
            $("#menuler").on("click", function () {

            });
        });
    </script>
</body>
</html>
