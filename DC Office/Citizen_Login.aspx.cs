using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
namespace Official_DC_Office
{
    public partial class WebForm17 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            /*string val = Request.QueryString["value"];



            if (val == null)
            {

            }
            else
            {
                Response.Write("<script>alert('" + val + "')</script>");
            }*/

            
            
        }

       

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string u = TextBox1.Text.Trim();

            // string p = TextBox2.Text.Trim();


            // string conString = "Data Source=DESKTOP-OO1BBQN\\SQLEXPRESS;Initial Catalog=Official_DC_Office;Integrated Security=True";

            // SqlConnection con = new SqlConnection(conString);

            //  ! Important
            /*string sQuery = "select * from Citizen_Register where ApplicationID ='" + u  + "' and password ='" + TextBox2.Text + "' ;";
                TextBox1.Text = " ";

                //TextBox2.Text = " ";
                SqlCommand sc = new SqlCommand(sQuery, con);
                con.Open();
                SqlDataReader sd = sc.ExecuteReader();


                if (sd.HasRows)
                {
                    sd.Read();
                    Session["applicantID"] = sd["ApplicationID"].ToString();

                    //Session["r"] = sd["username"].ToString();
                    //string role = sd["username"].ToString().Trim();
                    //Session["r1"] = role;


                    Response.Redirect("Appointment_Form.aspx");
                    //Response.Redirect("Citizen_Login.aspx?value=Application ID send to email");
                    // Response.Write("<script>alert('"+role+"')</script>");
                }
                else
                {
                    //Label2.Text="*Not a valid application id please register first";
                    Label3.Text = "*Details not valid please register first";
                    con.Close();
                }*/
            //! Important
            //string conString = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;
            //string conString = "Data Source=DESKTOP-OO1BBQN\\SQLEXPRESS;Initial Catalog=Official_DC_Office;Integrated Security=True";
            string conString = ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;

            SqlConnection con = new SqlConnection(conString);
            string sQuery = "select * from Citizen_Register where ApplicationID ='" + u + "' and password ='" + TextBox2.Text + "' ;";

                /*DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Response.Write("<script>alert('Email Already Exists')</script>");
                    return;
                }*/


            SqlDataAdapter sda = new SqlDataAdapter(sQuery,con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if(dt.Rows.Count > 0)
            {

                //Session["applicantID"] = dt.Rows["ApplicationID"].ToString();
                Session["applicantID"] = dt.Rows[0]["ApplicationID"].ToString();

                string s = Session["applicantID"].ToString();
                //string role = sd["username"].ToString().Trim();
                //Session["r1"] = role;
                 Session["name"] = dt.Rows[0]["name"].ToString();

                Response.Redirect("Appointment_Form.aspx");
                //Response.Redirect("Citizen_Login.aspx?value=Application ID send to email");
                // Response.Write("<script>alert('"+role+"')</script>");
            }
            else
            {
                //Label2.Text="*Not a valid application id please register first";
                Label3.Text = "*Details not valid please register first";
                con.Close();
            }
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Citizen_ForgotID.aspx");
        }
    }
}