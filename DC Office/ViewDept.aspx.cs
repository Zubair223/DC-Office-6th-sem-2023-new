using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Official_DC_Office
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*string constring = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;

            SqlConnection obj = new SqlConnection(constring);
            string squery = "select  userid,passwd,mail,phone,ofDesign,sec,handler,loc,role  from  admin_insert";
            SqlCommand sc = new SqlCommand(squery, obj);
            obj.Open();

            SqlDataReader sdr = sc.ExecuteReader();
            if (sdr.HasRows)
            {
                GridView1.DataSource = sdr;
                GridView1.DataBind();
                obj.Close();
            }
            else
            {
                Response.Write("<script>alert('table is empty')</script>");
            }*/
        }

       
    }
}