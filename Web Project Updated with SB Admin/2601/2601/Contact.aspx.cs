using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;

namespace _2601
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Sms_Click(object sender, EventArgs e)
        {
            var retval = Globefunc.SendUsingAPIAsync();
            Thread.Sleep(2000);
        }
    }
}