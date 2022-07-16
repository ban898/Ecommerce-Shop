<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="_2601.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" dir="rtl">
<head runat="server">
    <title>דף הרשמה</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="https://netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.2/css/all.css" integrity="sha384-vSIIfh2YWi9wW0r9iZe7RJPrKwp6bG+s9QZMoITbCckVJqGCCRhc+ccxNcdpHuYu" crossorigin="anonymous"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous"/>
	<link href="https://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap"/>
	<meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
	<style>
        body {
                 font-family: "Poppins", sans-serif;
                 height: 100vh;
                 background-image: url('Images/bbg.jpeg');
                 background-repeat: no-repeat;
                 background-attachment: fixed;
                 background-size: cover;
}
		.center-screen {
                  display: flex;
                  flex-direction: column;
                  justify-content: center;
                  text-align: center;
                  margin-bottom: 200px;
                  margin-top: 20px;
                }
	</style>
</head>
<body>
<form id="form1" runat="server">
    <!--Register BOX-->
    <div class="container">
	    <div class="row">
		    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3 center-screen" >
			    <h2>בבקשה הירשמו <small>לקבלת מבצעים מיוחדים</small></h2>
				    <hr class="colorgraph"/>
					    <div class="row">
							    <div class="col-xs-12 col-sm-6 col-md-6">
							    <div class="form-group">
								    <asp:TextBox ID="Fname" class="form-control input-lg" runat="server" placeholder="שם פרטי" TabIndex="1" MaxLength="10"  />
								    <asp:Literal ID="FnameLTR" runat="server"/>
                                    <asp:RequiredFieldValidator ID="FnameVali" runat="server" ErrorMessage="נא הזן שם פרטי" ControlToValidate="Fname" ForeColor="Red" />
							    </div>
							    </div>
							    <div class="col-xs-12 col-sm-6 col-md-6">
							    <div class="form-group">
								    <asp:TextBox ID="Lname" class="form-control input-lg" runat="server" placeholder="שם משפחה" TabIndex="2" MaxLength="20"  />
								    <asp:Literal ID="LnameLTR" runat="server"  />
                                    <asp:RequiredFieldValidator ID="LnameVali" runat="server" ErrorMessage="נא הזן שם משפחה" ControlToValidate="Lname" ForeColor="Red" />
							    </div>
							    </div> 
					    </div>
					    <div class="row">
						    <div class="col-xs-12 col-sm-6 col-md-6">
							    <div class="form-group">
								    <asp:TextBox ID="Phone" class="form-control input-lg" runat="server" placeholder="טלפון" TabIndex="3" textmode="Phone" />
								    <asp:Literal ID="PhoneLTR" runat="server"  />
                                    <asp:RequiredFieldValidator ID="phoneVali" runat="server" ErrorMessage="נא הזן מספר טלפון" ControlToValidate="phone" ForeColor="Red" />
							    </div>
						    </div>
						    <div class="col-xs-12 col-sm-6 col-md-6">
							    <div class="form-group">
								    <asp:TextBox ID="Address" class="form-control input-lg" runat="server"  placeholder="כתובת" TabIndex="4"  />
								    <asp:Literal ID="AdressLTR" runat="server"  />
                                    <asp:RequiredFieldValidator ID="AddressVali" runat="server" ErrorMessage="נא הזן כתובת מגורים" ControlToValidate="Address" ForeColor="Red" />
							    </div>
						    </div>
					    </div>
					    <div class="form-group">
						    <asp:dropdownlist runat="server" id="CityList" class="form-control input-lg" TabIndex="5" > 
						         <asp:listitem text="לחץ לבחירת עיר" value="-1"></asp:listitem>
							     <asp:listitem text="קריית גת" value="2"></asp:listitem>
							     <asp:listitem text="ירושלים" value="3"></asp:listitem>
						         <asp:listitem text="אשדוד" value="4"></asp:listitem>
						         <asp:listitem text="אשקלון" value="5"></asp:listitem>
							     <asp:listitem text="תל אביב" value="6"></asp:listitem>
							     <asp:listitem text="ראשון לציון" value="7"></asp:listitem>
							     <asp:listitem text="רעננה" value="8"></asp:listitem>
							     <asp:listitem text="רחובות" value="9"></asp:listitem>
							     <asp:listitem text="רמת גן" value="10"></asp:listitem>
						    </asp:dropdownlist>
							    <asp:RequiredFieldValidator ID="CityListVali" runat="server" ErrorMessage="עיר לא נבחרה" ForeColor="Red" ControlToValidate="CityList" InitialValue="-1"/>	 
								 
					    </div>
					    <div class="form-group">
						    <asp:TextBox ID="Email" class="form-control input-lg" runat="server" placeholder="אימייל חובה" TabIndex="6"  />
						    <asp:Literal ID="EmailLTR" runat="server"/>
						    <asp:RegularExpressionValidator ID="EmailVali" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="Email" ErrorMessage="אימייל שגוי" forecolor="Red"/>
					    </div>
					    <div class="row">
							    <div class="col-xs-12 col-sm-6 col-md-6">
								    <div class="form-group">
								    <asp:TextBox ID="Fpassword" TextMode="Password" class="form-control input-lg" runat="server" placeholder="סיסמא" TabIndex="7"  />
								    <asp:Literal ID="PasswordLTR" runat="server"/>
                                    <asp:RequiredFieldValidator ID="FpasswordVali" runat="server" ErrorMessage="נא הזן סיסמא" ControlToValidate="Fpassword" ForeColor="Red" />
							    </div>
							    </div>
							    <div class="col-xs-12 col-sm-6 col-md-6">
								    <div class="form-group">
								    <asp:TextBox ID="Spassword" TextMode="Password" class="form-control input-lg" runat="server" placeholder="אימות סיסמא" TabIndex="8"  />
								    <asp:CompareValidator ID="CMPpassword" runat="server" ErrorMessage="סיסמא ואימות סיסמא אינם תואמים" ControlToValidate="Spassword" ControlToCompare="Fpassword" Operator="Equal" type="String" ForeColor="Red"/>
							    </div>
							    </div>
					    </div>
					    <div class="row">
						    <div class="col-xs-4 col-sm-3 col-md-3">
							    <span class="button-checkbox">
								    <button type="button" class="btn" data-color="info" tabindex="9">אני מסכים</button>
						            <input type="checkbox" name="t_and_c" id="t_and_c" class="hidden" value="1"/>
							    </span>
						    </div>
						    <div class="col-xs-8 col-sm-9 col-md-9">
							     בלחיצה על: <strong class="label label-primary">אני מסכים</strong> אתה מסכים לתקנון שלנו ושימוש בעוגיות באתר זה.
						    </div>
					    </div>
			
				    <hr class="colorgraph"/>
					    <div class="row">
						    <div class="col-xs-12 col-md-6">
							    <asp:Button ID="RegBTN" runat="server" Text="סיום הרשמה" OnClick="RegBTN_Click" class="btn btn-primary btn-block btn-lg" TabIndex="10"  />
						    </div>
						    <div class="col-xs-12 col-md-6">
                                <asp:HyperLink ID="LogLink" CssClass="btn btn-success btn-block btn-lg" runat="server" Text="משתמש רשום ?" NavigateUrl="~/Login.aspx" />
						    </div>
					    </div>
		    </div>
	    </div>
    </div>
    <!--End Register BOX-->
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
<script src="Myscripts.js?v1"></script>
</body>
</html>