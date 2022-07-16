<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderComplete.aspx.cs" Inherits="_2601.OrderComplete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" dir="rtl">
<head runat="server">
    <style>
        #v ,#c ,#d{
            width:15%;
        }
    </style>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.2/css/all.css" integrity="sha384-vSIIfh2YWi9wW0r9iZe7RJPrKwp6bG+s9QZMoITbCckVJqGCCRhc+ccxNcdpHuYu" crossorigin="anonymous"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/css/bootstrap.min.css" integrity="sha384-DhY6onE6f3zzKbjUPRc2hOzGAdEf4/Dz+WJwBvEYL/lkkIsI3ihufq9hk9K4lVoK" crossorigin="anonymous" />
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/js/bootstrap.min.js" integrity="sha384-5h4UG+6GOuV9qXh6HqOLwZMY4mnLPraeTrjT5v07o347pj6IkfuoASuGBhfDsp3d" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/js/bootstrap.bundle.min.js" integrity="sha384-BOsAfwzjNJHrJ8cZidOg56tcQWfp6y72vEJ8xQ9w6Quywb24iOsW913URv1IS4GD" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/js/bootstrap.esm.min.js" integrity="sha384-Eg5XYZrb+x0FMnsSAcaUNc6vJ/6B47jQvyhan3IGKcCfko9Hq6vS3s1PviSpNbdE" crossorigin="anonymous"></script>
        <link type="text/css" href="Style.css" rel="stylesheet" />
        <title>דף סיום הזמנה</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
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
                                    <a class="nav-link active" href="defualt.aspx">דף הבית</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="Register.aspx">הרשמה</a> 
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="Product.aspx">מוצרים</a>
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
            <br /><br />
            <!--Headline-->
            <div class="container">
                <div class="py-5 text-center">
                    <img class="d-block mx-auto mb-4" src="/Images/final-logo.png" alt="logo" width="150" height="72" />
                    <h2>טופס שילוח ותשלום</h2>
                </div>
                <!--End of Headline-->
                <div class="row">
                    <!--Product List-->
                    <div class="col-md-4 order-md-2 mb-4">
                        <h4 class="d-flex justify-content-between align-items-center mb-3">
                            <span class="text-muted">העגלה שלך</span>
                            <span class="badge badge-secondary badge-pill">1</span>
                        </h4>
                        <ul class="list-group mb-3 sticky-top">
                             <asp:Repeater ID="RprCart" runat="server">
                                <ItemTemplate>
                                    <li class="list-group-item d-flex justify-content-between lh-condensed">
                                        <div>
                                            <h6 class="my-0"><%#Eval("Iname") %></h6>
                                            <small class="text-muted"><%#Eval("Isdes") %></small>
                                        </div>
                                        <span class="text-muted"><%#Eval("Iprice") %></span>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                                    <li class="list-group-item d-flex justify-content-between">
                                        <span>סך הכל :</span>
                                        <strong>
                                            <asp:Literal ID="ltlpay" runat="server"/>
                                            <i class="fas fa-shekel-sign"></i>
                                        </strong>
                                    </li>
                        </ul>
                    </div>
                    <!--End Products list-->
                    <div class="col-md-8 order-md-1">
                        <h4 class="mb-3">כתובת למשלוח</h4>
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="firstName">שם פרטי</label>
                                <input type="text" class="form-control" id="firstName" placeholder="שם פרטי" value="" required="" />
                                <div class="invalid-feedback">Valid first name is required.</div>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="lastName">שם משפחה</label>
                                <input type="text" class="form-control" id="lastName" placeholder="שם משפחה" value="" required="" />
                                <div class="invalid-feedback">Valid last name is required.</div>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="email">דואר אלקטרוני <span class="text-muted">לא חובה</span></label>
                            <input type="email" class="form-control" id="email" placeholder="you@example.com" />
                            <div class="invalid-feedback">Please enter a valid email address for shipping updates.</div>
                        </div>
                        <div class="mb-3">
                            <label for="address">כתובת</label>
                            <input type="text" class="form-control" id="address" placeholder="כתובת מגורים" required="" />
                            <div class="invalid-feedback">Please enter your shipping address.</div>
                        </div>
                        <div class="mb-3">
                            <label for="address2">כתובת חלופית <span class="text-muted">לא חובה</span></label>
                            <input type="text" class="form-control" id="address2" placeholder="כתובת מגורים" />
                        </div>
                        <div class="row">
                            <div class="col-md-5 mb-3">
                                <label for="City">עיר מגורים</label>
                                <asp:dropdownlist runat="server" id="Dropdownlist2" class="form-control input-lg">
                                    <asp:ListItem Text="בחר" Value="0"></asp:ListItem>
                                    <asp:ListItem Text="קריית גת" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="אשקלון" Value="2"></asp:ListItem>
                                    <asp:ListItem Text="רחובות" Value="3"></asp:ListItem>
                                    <asp:ListItem Text="תל אביב" Value="4"></asp:ListItem>
                                    <asp:ListItem Text="אשדוד" Value="5"></asp:ListItem>
                                    <asp:ListItem Text="באר שבע" Value="6"></asp:ListItem>
                                    <asp:ListItem Text="ראשון לציון" Value="7"></asp:ListItem>
                                    <asp:ListItem Text="נתניה" Value="8"></asp:ListItem>
                                    <asp:ListItem Text="רמת גן" Value="9"></asp:ListItem>
                                    <asp:ListItem Text="ירושלים" Value="10"></asp:ListItem>
                                    <asp:ListItem Text="אילת" Value="11"></asp:ListItem>
                                    <asp:ListItem Text="ראש העין" Value="12"></asp:ListItem>
                                    <asp:ListItem Text="קרית מלאכי" Value="13"></asp:ListItem>
                                </asp:dropdownlist>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3 mb-3">
                                <label for="zip">מיקוד</label>
                                <input type="text" class="form-control" id="zip" placeholder="מיקוד שלך" required="" />
                                <div class="invalid-feedback">Zip code required.</div>
                            </div>
                        </div>
                        <hr class="mb-4" />
                        <h4 class="mb-3">תשלום</h4>
                        <div class="row">
                            <div>
                                <label for="visa">כרטיס ויזה</label>
                                <input type="radio" id="v" name="cards" value="1" dir="rtl" />
                                <label for="credit">כרטיס אשראי</label>
                                <input type="radio" id="c" name="cards" value="2" dir="rtl" />
                                <label for="direct">כרטיס דיירקט</label>
                                <input type="radio" id="d" name="cards" value="3" dir="rtl" />
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="cc-name">שם מלא</label>
                                <input type="text" class="form-control" id="cc-name" placeholder="" required="" />
                                <small class="text-muted">שם מלא כפי שרשום על גבי הכרטיס</small>
                                <div class="invalid-feedback">Name on card is required</div>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="cc-number">מספר כרטיס אשראי</label>
                                <input type="text" class="form-control" id="cc-number" placeholder="" required="" />
                                <div class="invalid-feedback">Credit card number is required</div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3 mb-3">
                                <label for="cc-expiration">תוקף</label>
                                <input type="text" class="form-control" id="cc-expiration" placeholder="" required="" />
                                <div class="invalid-feedback">Expiration date required</div>
                            </div>
                            <div class="col-md-3 mb-3">
                                <label for="cc-cvv">קוד בגב הכרטיס</label>
                                <input type="text" class="form-control" id="cc-cvv" placeholder="" required="" />
                                <div class="invalid-feedback">Security code required</div>
                            </div>
                        </div>
                        <hr class="mb-4" />
                        <button class="btn btn-primary btn-lg btn-block" type="submit">סיים תשלום</button>
                    </div>
                </div>
            </div>
            <br />
            <br />
            <br />
            <!--Footer-->
            <footer class="bg-dark text-white pt-5 pb-4  sticky">
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
