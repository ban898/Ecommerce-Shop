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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void LoginBTM_Click(object sender, EventArgs e)
        {

            string sql = $"select * from T_User where Email='{Email.Text}' and UserPass='{UserPass.Text}'";
            string Connstr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\shopdb.mdf;Integrated Security=True;Connect Timeout=30";
            SqlConnection Conn = new SqlConnection(Connstr);
            Conn.Open();
            SqlCommand Cmd = new SqlCommand(sql, Conn);
            SqlDataReader Dr = Cmd.ExecuteReader();
            if(Dr.Read())
            {
                Session["VailidetedUser"] = (string)Dr["Fname"];
                Conn.Close();
                Response.Redirect("Product.aspx");
            }
            else
            {
                LoginLTR.Text = "Error";
                Conn.Close();
            }
            
        }

        protected void ForgetBTN_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}