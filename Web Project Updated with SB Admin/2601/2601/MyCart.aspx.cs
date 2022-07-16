using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _2601
{
    public partial class MyCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Cart"] == null || Session["Cart"] + "" == "")
            {
                LtlMyCart.Text = "סל הקניות שלך ריק";
            }
            else
            {
                Cart tmpCart = (Cart)Session["Cart"];
                RprCart.DataSource = tmpCart.Items;
                RprCart.DataBind();
                LtlMyCart.Text = "מחיר סל הקניות שלך הוא:" + tmpCart.GetSum();
            }
            if (Session["VailidetedUser"] == null && Session["VailidetedUser"] + "" == "")
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void BtnReset_Click(object sender, EventArgs e)
        {
            Session["Cart"] = null;
            Response.Redirect("MyCart.aspx");
        }

        protected void EndCart_Click(object sender, EventArgs e)
        {
            Cart tmpCart = (Cart)Session["Cart"];
            if (tmpCart==null)
            {
                Ltlpay.Text = "<span style='color:red'> **סל קניות ריק אין אפשרות לשלם </span>";
            }
            else
            {
                Response.Redirect("OrderComplete.aspx");
            }
        }

        protected void KeepBuy_Click(object sender, EventArgs e)
        {
            Response.Redirect("Product.aspx");
        }
    }
}