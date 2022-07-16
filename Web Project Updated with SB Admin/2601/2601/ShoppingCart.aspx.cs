using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _2601
{
    public partial class ShoppingCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Cart Guestcart;
            int pid = int.Parse("" + Request["Pid"]);

            if (Session["Cart"] == null || Session["Cart"] + "" == "")
                Guestcart = new Cart();
            else
                Guestcart = (Cart)Session["Cart"];

            List<Product> ProdList = (List<Product>)Application["ListofProducts"];
            foreach(Product p in ProdList)
            {
                if(p.Pid == pid)
                {
                    Item n = new Item() { Iid = p.Pid, Iamount = 1, Iname = p.Pname, Iprice = p.Pprice , Iimg = p.Pimg  , Idesc = p.Pdesc ,Isdes=p.Psdesc};
                    Guestcart.add2cart(n);
                    break;
                }
            }
            Session["Cart"] = Guestcart;
            Response.Redirect("MyCart.aspx");
        }
    }
}