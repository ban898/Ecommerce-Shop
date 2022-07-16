using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _2601
{
    public partial class Prodinfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string infoid;
            infoid = Request.QueryString["pid"];
            var prodlist = (List<Product>)Application["ListofProducts"];
            var newlist = new List<Product>();
            for(int i=0 ; i<prodlist.Count ; i++)
            {
                if(prodlist[i].Pid.ToString()==infoid)
                {
                    newlist.Add(prodlist[i]);
                    break;
                }
            }
            rprinfo.DataSource=newlist;
            rprinfo.DataBind();
        }
    }
}