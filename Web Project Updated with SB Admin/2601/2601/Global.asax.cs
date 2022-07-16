using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Data.SqlClient;
using System.Data;

namespace _2601
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            string Sql;
            SqlDataReader Dr;
            string Connstr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\shopdb.mdf;Integrated Security=True;Connect Timeout=30";
            SqlConnection Conn = new SqlConnection();
            Conn.ConnectionString = Connstr;
            Conn.Open();
            SqlCommand Cmd = new SqlCommand();
            Cmd.Connection = Conn;

            Sql = "select * from T_User";
            Cmd.CommandText = Sql;
            Dr = Cmd.ExecuteReader();
            List<User> Listofusers = new List<User>();
            while(Dr.Read()==true)
            {
                int userid = (int)Dr["UserID"];
                string userpass = (string)Dr["UserPass"];
                string fname = (string)Dr["Fname"];
                string lname = (string)Dr["Lname"];
                string address = (string)(Dr["Address"]+"");
                string email = (string)Dr["Email"];
                int status = (int)Dr["Status"];
                string phone = (string)(Dr["Phone"]+"");
                User Tmp = new User() { UserID = userid, UserPass = userpass, Fname = fname, Lname = lname, Address = address, Email = email, Status = status, Phone = phone };
                Listofusers.Add(Tmp);
            }
            Application["ListofUsers"] = Listofusers;
            Dr.Close();

            Sql = "select * from T_Category";
            Cmd.CommandText = Sql;
            Dr = Cmd.ExecuteReader();
            List<Category> Listofcategory = new List<Category>();
            while(Dr.Read()==true)
            {
                int cid = (int)Dr["Cid"];
                string cname = (string)Dr["Cname"];
                string Cdesc = (string)Dr["Cdesc"];
                Category Tmp = new Category() { Cid = cid, Cname = cname, Cdesc = Cdesc };
                Listofcategory.Add(Tmp);
            }
            Application["ListofCategories"] = Listofcategory;
            Dr.Close();

            Sql = "select * from T_Product";
            Cmd.CommandText = Sql;
            Dr = Cmd.ExecuteReader();
            List<Product> Listofproduct = new List<Product>();
            while(Dr.Read()==true)
            {
                int cid = (int)Dr["Cid"];
                int pid = (int)Dr["Pid"];
                int pamount = (int)Dr["Pamount"];
                int pprice = (int)Dr["Pprice"];
                string pdesc = (string)(Dr["Pdesc"]+"");
                string pimg = (string)Dr["Pimg"];
                string psdesc = (string)Dr["Psdesc"];
                string pname = (string)Dr["Pname"];


                Product Tmp = new Product() { Cid = cid, Pid = pid, Pamount = pamount, Pprice = pprice, Pdesc = pdesc, Pimg = pimg, Psdesc = psdesc, Pname = (string)Dr["Pname"] };
                Listofproduct.Add(Tmp);
            }
            Application["ListofProducts"] = Listofproduct;
            Conn.Close();
            Dr.Close();
        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}