using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _2601
{
    public partial class OrderComplete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["Cart"] == null || Session["Cart"] + "" == "")
            {
                ltlpay.Text = "סל הקניות שלך ריק";
            }
            else
            {
                Cart tmpCart = (Cart)Session["Cart"];
                RprCart.DataSource = tmpCart.Items;
                RprCart.DataBind();
                ltlpay.Text = "מחיר סל הקניות שלך הוא:" + tmpCart.GetSum();
            }
        }
    }
}