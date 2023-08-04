using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Official_DC_Office
{
    public partial class WebForm15 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click1(object sender, EventArgs e)
        {
            string u = TextBox1.Text.Trim();

            string p = TextBox2.Text.Trim();


            string conString = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;

            SqlConnection con = new SqlConnection(conString);

            string sQuery = "select * from admin_insert where userid ='" + u + "' and passwd = '" + p + "' ;";
            TextBox1.Text = " ";

            TextBox2.Text = " ";
            SqlCommand sc = new SqlCommand(sQuery, con);
            con.Open();
            SqlDataReader sd = sc.ExecuteReader();

            Session["id"] = u;
            Session["pas"] = p;

            // string r = sd["role"].ToString();
            //

            if (sd.HasRows)
            {
                sd.Read();
                string role = sd["role"].ToString();
                Session["ofDesign"] = sd["ofDesign"].ToString();

                if (role == "Main Office")
                {
                    Session["n"] = sd["handler"].ToString().Trim();

                    Response.Redirect("ScheduleAppointment.aspx");
                }
                else if (role == "Sub Office")
                {


                    Session["n"] = sd["handler"].ToString().Trim();

                    Response.Redirect("LineDept_Page.aspx");

                }

            }
            /*    else
                {
                    Response.Write("<script>alert('Not Department User')</script>");
                    con.Close();
                }*/

            /*else if (role == "Sub Office")
            {
                if (sd.HasRows)
                {
                    Session["n"] = sd["handler"].ToString().Trim();

                    Response.Redirect("LineDept_Page.aspx");
                }

            }*/
            else
            {
                Response.Write("<script>alert('Not Any Department User')</script>");
                con.Close();
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ForgotDeptID.aspx");
        }
    }
}