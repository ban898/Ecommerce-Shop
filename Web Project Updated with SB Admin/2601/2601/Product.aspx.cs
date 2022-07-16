using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _2601
{
    public partial class Product1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<Product> listofproducts = (List<Product>)Application["ListofProducts"];
                ProdRPT.DataSource = listofproducts;
                ProdRPT.DataBind();
            }
        }
    }
}