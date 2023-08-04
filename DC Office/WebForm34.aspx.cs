using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Official_DC_Office
{
    public partial class WebForm34 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            

            string constr = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;

            SqlConnection con = new SqlConnection(constr);
            string squery = "select  AppointmentID,SlotID,Subject,filepath,Is_Approved  from  Appointment_Dept where AppointmentID = '" + Session["App_id"].ToString() + "';";
            SqlCommand sc = new SqlCommand(squery, con);
            con.Open();

            SqlDataReader sdr = sc.ExecuteReader();
            if (sdr.HasRows)
            {
                GridView1.DataSource = sdr;
                GridView1.DataBind();
                con.Close();
            }
            else
            {
                Response.Write("<script>alert('table is empty')</script>");
            }
        }
    }
}