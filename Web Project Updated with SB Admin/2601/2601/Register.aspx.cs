using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace _2601
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RegBTN_Click(object sender, EventArgs e)
        {
         
            string Sql = $"insert into t_user(fname,lname,address,email,userpass,phone,status) values(N'{Fname.Text}',N'{Lname.Text}',N'{Address.Text}',N'{Email.Text}',N'{Fpassword.Text}',N'{Phone.Text}',1)";
            string Connstr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\shopdb.mdf;Integrated Security=True;Connect Timeout=30";
            SqlConnection Conn = new SqlConnection(Connstr);
            Conn.Open();
            SqlCommand Cmd = new SqlCommand(Sql, Conn);
            Cmd.ExecuteNonQuery();

            Session["VailidetedUser"] = "ok";
            Conn.Close();
            Response.Redirect("Login.aspx");
           
        }
    }
}