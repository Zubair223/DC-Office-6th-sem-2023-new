using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
namespace Official_DC_Office
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        //This code is for root login

        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string u = TextBox1.Text.Trim();

            string p = TextBox2.Text.Trim();


            string conString = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;

            SqlConnection con = new SqlConnection(conString);

            //string sQuery = "select * from admin_login where username ='" + u + "' and password = '" + p + "' ;";
            TextBox1.Text = " ";

            TextBox2.Text = " ";
            //SqlCommand sc = new SqlCommand(sQuery, con);
            SqlCommand sc = new SqlCommand("splogin", con);
            sc.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter param = sc.Parameters.Add("@username",System.Data.SqlDbType.VarChar,50);
            param.Value = u;
            param = sc.Parameters.Add("@password", System.Data.SqlDbType.VarChar, 50);
            param.Value = p;
            con.Open();
            SqlDataReader sd = sc.ExecuteReader();
            
            
            if (sd.HasRows)
            {
                sd.Read();

                //Session["r"] = sd["username"].ToString();
                string username = sd["username"].ToString().Trim();
                Session["r1"] = username;
                string role = sd["role"].ToString().Trim();
                Session["r2"] = role;

                //string s = sd["username"].ToString().Trim();

                FormsAuthenticationTicket tkt = new FormsAuthenticationTicket(1, username,DateTime.Now,DateTime.Now.AddMinutes(30), false, role);
                string ckr = FormsAuthentication.Encrypt(tkt);
                HttpCookie hc = new HttpCookie(FormsAuthentication.FormsCookieName,ckr);
                hc.Path = FormsAuthentication.FormsCookiePath;
                Response.Cookies.Add(hc);


                if (role == "admin")
                {
                    Response.Redirect("ViewDept.aspx");
                }
                else
                {
                    Response.Redirect("Admin_Login.aspx");
                }
                // Response.Write("<script>alert('"+role+"')</script>");
            }
            else
            {
                Response.Write("<script>alert('Not Admin')</script>");
                con.Close();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_forgot.aspx");
        }
    }
}