using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Official_DC_Office
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string user = TextBox1.Text;
            //* string pass = TextBox2.Text;
            //string mail = TextBox3.Text;
            /*  string ph = TextBox4.Text;
              string ofDesign = TextBox5.Text;
              string sec = TextBox6.Text;
              string handler = TextBox7.Text;
              string loc = TextBox8.Text;*//**/


            string constring = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;

            SqlConnection obj = new SqlConnection(constring);
            string dquery = "DELETE FROM admin_insert WHERE userid = '" + user + "'";
            //"" + user + "' and passwd='" + pass + "'and mail='" + mail + "'and phone='" + ph + "'and ofDesign='" + ofDesign + "'and sec='" + sec + "'and handler='" + handler + "'and loc='" + loc + "';";

            SqlCommand sc = new SqlCommand(dquery, obj);
            TextBox1.Text="";
            obj.Open();
            // TextBox1.Text = "";
            //TextBox2.Text = "";

            int x = sc.ExecuteNonQuery();
            if (x == 1)
            {
                Response.Write("<script>alert('Row deleted succesfully')</script>");
            }
            else
            {
                Response.Write("<script>alert('Row is not deleted')</script>");
            }
            obj.Close();
        }
    }
}