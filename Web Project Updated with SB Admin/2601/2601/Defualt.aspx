<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Defualt.aspx.cs" Inherits="_2601.Defualt" %>

<!DOCTYPE html>
<!--עמוד הבית-->
<html xmlns="http://www.w3.org/1999/xhtml" dir="rtl">
    <head runat="server">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.2/css/all.css" integrity="sha384-vSIIfh2YWi9wW0r9iZe7RJPrKwp6bG+s9QZMoITbCckVJqGCCRhc+ccxNcdpHuYu" crossorigin="anonymous"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/css/bootstrap.min.css" integrity="sha384-DhY6onE6f3zzKbjUPRc2hOzGAdEf4/Dz+WJwBvEYL/lkkIsI3ihufq9hk9K4lVoK" crossorigin="anonymous" />
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/js/bootstrap.min.js" integrity="sha384-5h4UG+6GOuV9qXh6HqOLwZMY4mnLPraeTrjT5v07o347pj6IkfuoASuGBhfDsp3d" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/js/bootstrap.bundle.min.js" integrity="sha384-BOsAfwzjNJHrJ8cZidOg56tcQWfp6y72vEJ8xQ9w6Quywb24iOsW913URv1IS4GD" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/js/bootstrap.esm.min.js" integrity="sha384-Eg5XYZrb+x0FMnsSAcaUNc6vJ/6B47jQvyhan3IGKcCfko9Hq6vS3s1PviSpNbdE" crossorigin="anonymous"></script>
        <link type="text/css" href="Style.css?v1" rel="stylesheet" />
        <title>דף הבית</title>
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
            <!--slide-->
            <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
              <div class="carousel-inner">
                <div class="carousel-item active">
                  <img class="d-block w-100" src="/Images/Products/amds.png" alt="First slide" height="600"/>
                  <div class="carousel-caption d-none d-md-block">
                    <p>סדרת מעבדי AMD במחיר השקה</p>
                  </div>
                </div>
                <div class="carousel-item">
                  <img class="d-block w-100" src="/Images/Products/30s.png" alt="Second slide" height="600"/>
                  <div class="carousel-caption d-none d-md-block">
                    <p>סדרת 3000 של Nvidia</p>
                  </div>
                </div>
                <div class="carousel-item">
                  <img class="d-block w-100" src="/Images/Products/intels.jpg" alt="Third slide" height="600"/>
                  <div class="carousel-caption d-none d-md-block">
                    <p>דור 10 של מעבדי אינטל</p>
                  </div>
                </div>
              </div>
              <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                <span class="sr-only">הקודם</span>
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              </a>
              <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">הבא</span>
              </a>
             </div>
            <!--endslide-->
            <!--Icons-->
            <section class="services py-5 text-center">
                <div class="container">
                    <div class="row">
                        <!--Single Icon-->
                        <div class="col-10 mx-auto col-md-6 col-lg-4 my-3">
                            <span class="service-icon">
                                <i class="fas fa-globe fa-2x"></i>
                            </span>
                            <h5 class="font-weight-bold text-uppercase">
                                משלוח בין-לאומי 
                            </h5>
                            <p class="text-capitalize">
                                חברת משלוחים יעודית ובלעדית ללקוחותינו מבצעים משלוחים מהירים ומקצועיים ואפילו למדינות חוץ.
                            </p>
                        </div>
                        <!--End Single Icon-->
                        <!--Single Icon-->
                        <div class="col-10 mx-auto col-md-6 col-lg-4 my-3">
                            <span class="service-icon">
                                <i class="fas fa-hand-holding-usd fa-2x"></i>
                            </span>
                            <h5 class="font-weight-bold text-uppercase">
                                החזר כספי
                            </h5>
                            <p class="text-capitalize">
                                התחייבות להחזר כספי תוך 14 ימי עסקים מחויבים לבצע זאת במהירות הכי גבוהה במדינת ישראל.
                            </p>
                        </div>
                        <!--End Single Icon-->
                        <!--Single Icon-->
                        <div class="col-10 mx-auto col-md-6 col-lg-4 my-3">
                            <span class="service-icon">
                                <i class="fas fa-shield-alt fa-2x"></i>
                            </span>
                            <h5 class="font-weight-bold text-uppercase">
                                קנייה בטוחה 
                            </h5>
                            <p class="text-capitalize">
                                תשלום מאובטח ב100% מקבלים את כל סוגי הכרטיסים בארץ ובעולם .
                            </p>
                        </div>
                        <!--End Single Icon-->
                    </div>
                </div>
            </section>
            <!--End Icons-->
            <!--Popular-->
            <section  class="products py-5">
                <div class="container">
                    <!--title-->
                    <div class="col-10 mx-auto col-sm-6 text-center">
                        <h1 class="text-capitalize">
                            מוצרים נבחרים
                        </h1>
                    </div>
                    <!--end title-->
                    <div class="row">
                    <!--popular 1-->
                        <div class="col-10 col-sm-8 col-lg-4 mx-auto my-3">
                            <div class="card">
                                <div class="card-img">
                                    <img src="/Images/Popular/3090.jpg" class="card-img-top"/>
                                </div>
                                <div class="card-body">
                                    <div class="card-text d-flex justify-content-between text-capitalize">
                                        <h5>כרטיס הדגל מסדרת 3000 מעולה לעיצוב ועריכה</h5>
                                        <span>החל מ6000<i class="fas fa-shekel-sign"></i></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <!--end popular 1-->
                    <!--popular 2-->
                        <div class="col-10 col-sm-8 col-lg-4 mx-auto my-3">
                            <div class="card">
                                <div class="card-img">
                                    <img src="/Images/Popular/newsony.jpg" class="card-img-top"/>
                                </div>
                                <div class="card-body">
                                    <div class="card-text d-flex justify-content-between text-capitalize">
                                        <h5>אוזניות איכותיות מבית Sony בצבע לבן עם מיקרופון</h5>
                                        <span>החל מ400<i class="fas fa-shekel-sign"></i></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <!--end popular 2-->
                    <!--popular 3-->
                        <div class="col-10 col-sm-8 col-lg-4 mx-auto my-3">
                            <div class="card">
                                <div class="card-img">
                                    <img src="/Images/Popular/pro.jpg" class="card-img-top"/>
                                </div>
                                <div class="card-body">
                                    <div class="card-text d-flex justify-content-between text-capitalize">
                                        <h5>עכבר Logitech G PRO Wireless Gaming כולל תאורת לד</h5>
                                        <span>החל מ550<i class="fas fa-shekel-sign"></i></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <!--end popular 3-->
                    <!--popular 4-->
                        <div class="col-10 col-sm-8 col-lg-4 mx-auto my-3">
                            <div class="card">
                                <div class="card-img">
                                    <img src="/Images/Popular/water.jpg" class="card-img-top"/>
                                </div>
                                <div class="card-body">
                                    <div class="card-text d-flex justify-content-between text-capitalize">
                                        <h5>קירור נוזלי מבית Corsair בעל 3 מאווררים 120 מ"מ</h5>
                                        <span>החל מ700<i class="fas fa-shekel-sign"></i></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <!--end popular 4-->
                    <!--popular 5-->
                        <div class="col-10 col-sm-8 col-lg-4 mx-auto my-3">
                            <div class="card">
                                <div class="card-img">
                                    <img src="/Images/Popular/4k.jpg" class="card-img-top"/>
                                </div>
                                <div class="card-body">
                                    <div class="card-text d-flex justify-content-between text-capitalize">
                                        <h5>מסך מחשב איכותי מבית Asus אשר מתאים במיוחד לגיימרים</h5>
                                        <span>החל מ7800<i class="fas fa-shekel-sign"></i></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <!--end popular 5-->
                    <!--popular 6-->
                        <div class="col-10 col-sm-8 col-lg-4 mx-auto my-3">
                            <div class="card">
                                <div class="card-img">
                                    <img src="/Images/Popular/g915.jpg" class="card-img-top"/>
                                </div>
                                <div class="card-body">
                                    <div class="card-text d-flex justify-content-between text-capitalize">
                                        <h5>מקלדת לגיימרים מכאנית מעוצבת מבית Logitech עם תאורה אחורית</h5>
                                        <span>החל מ900<i class="fas fa-shekel-sign"></i></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <!--end popular 6-->
                    <!--popular 7-->
                        <div class="col-10 col-sm-8 col-lg-4 mx-auto my-3">
                            <div class="card">
                                <div class="card-img">
                                    <img src="/Images/Popular/xbox.jpg" class="card-img-top"/>
                                </div>
                                <div class="card-body">
                                    <div class="card-text d-flex justify-content-between text-capitalize">
                                        <h5>קונסולת Xbox Series X החדשה, הדור הבא של הקונסולות </h5>
                                        <span>החל מ2200<i class="fas fa-shekel-sign"></i></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <!--end popular 7-->
                    <!--popular 8-->
                        <div class="col-10 col-sm-8 col-lg-4 mx-auto my-3">
                            <div class="card">
                                <div class="card-img">
                                    <img src="/Images/Popular/sony5.jpg" class="card-img-top"/>
                                </div>
                                <div class="card-body">
                                    <div class="card-text d-flex justify-content-between text-capitalize">
                                        <h5>קונסולת הדור הבא מבית Sony, ה – PlayStation 5</h5>
                                        <span>החל מ2500<i class="fas fa-shekel-sign"></i></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <!--end popular 8-->
                    <!--popular 9-->
                        <div class="col-10 col-sm-8 col-lg-4 mx-auto my-3">
                            <div class="card">
                                <div class="card-img">
                                    <img src="/Images/Popular/asus.jpg" class="card-img-top"/>
                                </div>
                                <div class="card-body">
                                    <div class="card-text d-flex justify-content-between text-capitalize">
                                        <h5>כיסא גיימינג Asus ROG Chariot Gaming Chair</h5>
                                        <span>החל מ2300<i class="fas fa-shekel-sign"></i></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <!--end popular 9-->
                    <!--popular 10-->
                        <div class="col-10 col-sm-8 col-lg-4 mx-auto my-3">
                            <div class="card">
                                <div class="card-img">
                                    <img src="/Images/Popular/z490.jpg" class="card-img-top"/>
                                </div>
                                <div class="card-body">
                                    <div class="card-text d-flex justify-content-between text-capitalize">
                                        <h5>לוח אם למעבד אינטל מבית Asus דגם Rog Strix Z490-E Gaming בעל תושבת 1200 ערכת שבבים Z490 מסוג ATX</h5>
                                        <span>החל מ1400<i class="fas fa-shekel-sign"></i></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <!--end popular 10-->
                    </div>
                </div>
            </section>
            <!--End Popular-->
            <!--About-->
            <section id="content" class="section-style">
             <div class="container">
              <div class="row header">
                <div class="col-md-12">
                    <h2>קצת עלינו</h2>
                </div>
              </div>
              <div class="row">
               <div class="col-md-8 mx-auto">
                <p>החברה שלנו הוקמה בשנת 2007, והיא עוסקת בהרכבת ובמכירת מחשבים חזקים במיוחד, לשימוש ביתי\ משרדי\ סלוני, ובעיקר לשימושה של האוכלוסייה חובבת המשחקי מחשב, או בקיצור- "גיימרים".
                מחשבי "גיימינג" ידועים ביופיים ובביצועם החזקים עבור "גיימרים", אשר צמאים לגרפיקה במשחקי המחשב- התלת מימדית והמתקדמת של תקופתנו.
                מחשבי-על אלו בולטים משאר המחשבים הביתיים, ואף שונים ברכיביהם הפנימיים –אותם לא תמצאו במחשב הביתי\משרדי הממוצע, של ימינו.
                לדוגמא, קירורי מים לרכיבי המחשב, תאורה פנימית לנוחיות וליופי, מארזים עם חלונות שקופים, כרטיסי מסך חזקים- המיועדים לגרפיקה תלת מימדית, ספקי כוח המתואמים לביצועים כבדים של הרכיבים, ומאווררים גדולים ושקטים במיוחד, השומרים על טמפרטורות נמוכות של הרכיבים ובכך משפרים את ביצועם.
                </p>
               </div>
              </div>
             </div>
            </section>     
            <!--end About-->
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
