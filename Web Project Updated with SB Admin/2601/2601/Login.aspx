<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="_2601.Login" %>

<!DOCTYPE html>
<%--דף התחברות לאתר--%>
<html xmlns="http://www.w3.org/1999/xhtml" dir="rtl">
    <head runat="server">
        <style>
            #LoginBTM{
                background-color:seagreen!important;
            }
            #ForgetBTN{
                background-color:#3399aa!important;
            }
        </style>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>Login</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous" />
        <link href="Style.css?v1" rel="stylesheet" />
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.2/css/all.css" integrity="sha384-vSIIfh2YWi9wW0r9iZe7RJPrKwp6bG+s9QZMoITbCckVJqGCCRhc+ccxNcdpHuYu" crossorigin="anonymous"/>
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    </head>
    <body>
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
                                <a class="nav-link" href="Product.aspx">מוצרים</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" href="Login.aspx">התחברות</a>
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
        <!--LoginBox-->
        <div class="wrapper fadeInDown">
            <div id="formContent">
                <form id="form1" runat="server">
                    <div class="d-flex flex-row align-items-center">
                        <label class="w-50 p-3">
                            אימייל :
                        </label>
                        <asp:TextBox ID="Email" runat="server" class="fadeIn second" placeholder="אימייל" /> <br />
                    </div>
                    <div class="d-flex flex-row align-items-center">
                        <label class="w-50 p-3">
                            סיסמא :
                        </label>
                        <asp:TextBox ID="UserPass" runat="server" type="password" class="fadeIn second" placeholder="סיסמא" /> <br />
                    </div>
                    <asp:Button ID="LoginBTM" runat="server" Text="התחבר" OnClick="LoginBTM_Click" CssClass="LoginBTM" /> <br />
                    <asp:Literal ID="LoginLTR" runat="server" />
                    <div id="formFooter">
                        <asp:Button ID="ForgetBTN" runat="server" Text="הירשם כאן" OnClick="ForgetBTN_Click" CssClass="ForgetBTN" />
                        <asp:Literal ID="ForgetLTN" runat="server" />
                    </div>
                </form>
            </div>
        </div>
        <!--End LoginBox-->
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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
    </body>
</html>
