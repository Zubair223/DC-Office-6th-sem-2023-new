using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Official_DC_Office
{
    public partial class WebForm23 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        
    }
}




/*
            if (Page.IsPostBack == false)
            {
                string userid = Session["id"].ToString();

                string constring = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;

                SqlConnection obj = new SqlConnection(constring);
                string squery = "select  *  from  C_appointment where userid='" + userid + "';";
                SqlCommand scd = new SqlCommand(squery, obj);
                obj.Open();

                SqlDataReader sdr = scd.ExecuteReader();
                if (sdr.HasRows)
                {
                    GridView1.DataSource = sdr;
                    GridView1.DataBind();
                    obj.Close();
                }
                else
                {
                    Response.Write("<script>alert('table is empty')</script>");
                }
                //TextBox7.Text = userid;
            }*/