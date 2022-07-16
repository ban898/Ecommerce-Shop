<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="_2601.Product1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" dir="rtl">
<head runat="server">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.2/css/all.css" integrity="sha384-vSIIfh2YWi9wW0r9iZe7RJPrKwp6bG+s9QZMoITbCckVJqGCCRhc+ccxNcdpHuYu" crossorigin="anonymous"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/css/bootstrap.min.css" integrity="sha384-DhY6onE6f3zzKbjUPRc2hOzGAdEf4/Dz+WJwBvEYL/lkkIsI3ihufq9hk9K4lVoK" crossorigin="anonymous" />
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/js/bootstrap.min.js" integrity="sha384-5h4UG+6GOuV9qXh6HqOLwZMY4mnLPraeTrjT5v07o347pj6IkfuoASuGBhfDsp3d" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/js/bootstrap.bundle.min.js" integrity="sha384-BOsAfwzjNJHrJ8cZidOg56tcQWfp6y72vEJ8xQ9w6Quywb24iOsW913URv1IS4GD" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/js/bootstrap.esm.min.js" integrity="sha384-Eg5XYZrb+x0FMnsSAcaUNc6vJ/6B47jQvyhan3IGKcCfko9Hq6vS3s1PviSpNbdE" crossorigin="anonymous"></script>
        <link type="text/css" href="Style.css" rel="stylesheet" />
        <title>דף הבית</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
    <style>
        body {
                 font-family: "Poppins", sans-serif;
                 height: 100vh;
                 background-image: url('Images/bbg.jpeg');
                 background-repeat: no-repeat;
                 background-attachment: fixed;
                 background-size: cover;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!--Navbar-->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top" style="background-color: lightgrey;">
                <div class="container-fluid">
                    <div class="right-side">
                        <img src="/Images/final-logo.png" class="navbar-brand" width="100" alt="PC shark logo" />
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarNav">
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a class="nav-link" href="defualt.aspx">דף הבית</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="Register.aspx">הרשמה</a> 
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link active" href="Product.aspx">מוצרים</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="Login.aspx">התחברות</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="left-side">
                        <a href="Contact.aspx">צור קשר</a>
                    </div>
                </div>
            </nav>
        <!--EndNavbar-->
        <!--Products-->
        <div class="container">
            <h1 class="text-center prod-head">מוצרי האתר</h1>
            <hr />
            <div class="row">
                <asp:Repeater ID="ProdRPT" runat="server">
                    <ItemTemplate>
                        <!--single prod-->
                        <div class="col-md-4 product-grid">
                            <div class="image">
                                <a href="Prodinfo.aspx?pid=<%#Eval("Pid") %>">
                                    <img src="Images/Products/<%#Eval("Pimg") %>" class="w-100" height="214" />
                                    <div class="overlay">
                                        <div class="detail">מעבר לפריט</div>
                                    </div>
                                </a>
                            </div>
                            <h4 class="text-center"><%#Eval("Pname") %></h4>
                            <h5 class="text-center">מחיר : <%#Eval("Pprice") %><i class="fas fa-shekel-sign"></i> </h5>
                            <a href="ShoppingCart.aspx?Pid=<%#Eval("Pid") %>" class="btn buy">לקנייה</a>
                        </div>
                        <!--end single prod-->
                   </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
        <!--End Products-->
        <!--Footer-->
        <footer class="bg-dark text-white pt-5 pb-4">
                <div class="container text-center text-md-right">
                    <div class="row text-center text-md-right">
                        <div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3">
                            <h5 class="text-uppercase mb-4 font-weight-bold text-warning">PC Shark</h5>
                            <p>אנחנו חברת פיסי שארק מתחייבים בזאת שהלקוח תמיד בראש סדר העדיפיות צברנו ותק בשוק של עשרות שנים ואנחנו כאן כדי להוכיח זאת </p>
                        </div>
                        <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mt-3">
                            <h5 class="text-uppercase mb-4 font-weight-bold text-warning">ספקים</h5>
                            <p>
                                <a href="https://www.logitech.com/en-us" class="text-white" style="text-decoration:none;">Logitech</a>
                            </p>
                            <p>
                                <a href="https://www.corsair.com/ww/en/" class="text-white" style="text-decoration:none;">Corsair</a>
                            </p>
                            <p>
                                <a href="https://www.intel.com/content/www/us/en/products/processors.html" class="text-white" style="text-decoration:none;">Intel</a>
                            </p>
                            <p>
                                <a href="https://www.nvidia.com/en-us/" class="text-white" style="text-decoration:none;">Nvidia</a>
                            </p>
                        </div>
                        <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mt-3">
                            <h5 class="text-uppercase mb-4 font-weight-bold text-warning">ספקים נוספים</h5>
                            <p>
                                <a href="https://www.nzxt.com/" class="text-white" style="text-decoration:none;">NZXT</a>
                            </p>
                            <p>
                                <a href="https://www.razer.com/" class="text-white" style="text-decoration:none;">Razer</a>
                            </p>
                            <p>
                                <a href="https://dxracer.co.il/" class="text-white" style="text-decoration:none;">Dxracer</a>
                            </p>
                            <p>
                                <a href="https://www.samsung.com/il/" class="text-white" style="text-decoration:none;">Samsung</a>
                            </p>
                        </div>
                        <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mt-3">
                            <h5 class="text-uppercase mb-4 font-weight-bold text-warning">צור קשר</h5>
                            <p>
                                <i class="fas fa-home mr-3"></i>    אלכסנדרוני 15 , קריית גת , ישראל    
                            </p>
                            <p>
                                <i class="fas fa-envelope mr-3"></i>    Davidface2@gmail.com    
                            </p>
                            <p>
                                <i class="fas fa-phone mr-3"></i>    054-7657085    
                            </p>
                            <p>
                                <i class="fas fa-print mr-3"></i>    08-8828372    
                            </p>
                        </div>
                    </div>
                    <hr class="mb-4" />
                    <div class="row align-items-center">
                        <div class="col-md-7 col-lg-8">
                            <p>
                                ©2021  כל הזכויות שמורות ל:
                                <a href="#" style="text-decoration:none;">
                                    <strong class="text-warning">PC Shark</strong>
                                </a>
                            </p>
                        </div>
                        <div class="col-md-5 col-lg-4">
                            <div class="text-center text-md-right">
                                <ul class="list-unstyled list-inline">
                                    <li class="list-inline-item">
                                        <a href="#" class="btn-floating btn-sm text-white" style="font-size:23px;"><i class="fab fa-facebook"></i></a>
                                    </li>
                                    <li class="list-inline-item">
                                        <a href="#" class="btn-floating btn-sm text-white" style="font-size:23px;"><i class="fab fa-twitter"></i></a>
                                    </li>
                                    <li class="list-inline-item">
                                        <a href="#" class="btn-floating btn-sm text-white" style="font-size:23px;"><i class="fab fa-google-plus"></i></a>
                                    </li>
                                    <li class="list-inline-item">
                                        <a href="#" class="btn-floating btn-sm text-white" style="font-size:23px;"><i class="fab fa-linkedin-in"></i></a>
                                    </li>
                                    <li class="list-inline-item">
                                        <a href="#" class="btn-floating btn-sm text-white" style="font-size:23px;"><i class="fab fa-youtube"></i></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
        <!--end footer-->
    </form>
</body>
</html>
