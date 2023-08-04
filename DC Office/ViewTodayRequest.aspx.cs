using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Official_DC_Office
{
    public partial class WebForm33 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string userid = Session["id"].ToString();
            //string constring = "Data Source=DESKTOP-OO1BBQN\\SQLEXPRESS;Initial Catalog=Official_DC_Office;Integrated Security=True";
            string constring = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;
            SqlDataSource1.SelectCommand = "select AppointmentID,Dept_user_ID,ApplicantID,convert(varchar(20), date, 105) as date,SlotID,Subject,filepath,Is_Approved from Appointment_Dept where date = '" + DateTime.Now.ToString("yyyy/MM/dd") + "' and Dept_user_ID = '"+userid+"'";
            SqlConnection con = new SqlConnection(constring);
            SqlCommand sc = new SqlCommand(SqlDataSource1.SelectCommand, con);
            con.Open();

            SqlDataReader sdr = sc.ExecuteReader();
            if (sdr.HasRows) //bakwas
            {
                
                
                    con.Close();
                
            }
          
            
            
            else
            {
                Response.Write("<script>alert('table is empty')</script>");
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            string userid = Session["id"].ToString();


            if (e.CommandName == "Approval")
            {


                //string constr = "Data Source=DESKTOP-OO1BBQN\\SQLEXPRESS;Initial Catalog=Official_DC_Office;Integrated Security=True";
                string constr = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;
                SqlConnection ob = new SqlConnection(constr);

                string squery = "select * from Appointment_Dept where App_remark is not Null and AppointmentID = ' " + Convert.ToInt32(e.CommandArgument) + "'";

                SqlCommand scd = new SqlCommand(squery, ob);
                ob.Open();
                SqlDataReader sdr = scd.ExecuteReader();
                if (sdr.HasRows)
                {
                    Response.Write("<script>alert('Appointment Already Rejected')</script>");
                    return;
                }



                int app_ID = Convert.ToInt32(e.CommandArgument);
                //Response.Redirect("WebForm3.aspx");
                //string constring = "Data Source=DESKTOP-OO1BBQN\\SQLEXPRESS;Initial Catalog=Official_DC_Office;Integrated Security=True";
                string constring = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;
                SqlConnection obj = new SqlConnection(constring);

                string uquery = "update Appointment_Dept set Is_Approved = '" + true + "' ,Approved_on =  convert(varchar, getdate(), 23)  , Approved_by = '" + userid + "' where AppointmentID='" + app_ID + "';";

                SqlCommand sc = new SqlCommand(uquery, obj);
                obj.Open();
                sc.ExecuteNonQuery();

                Response.Redirect("ViewTodayRequest.aspx");

            }
            if (e.CommandName == "Rejection")
            {



                //string constr = "Data Source=DESKTOP-OO1BBQN\\SQLEXPRESS;Initial Catalog=Official_DC_Office;Integrated Security=True";
                string constr = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;
                SqlConnection ob = new SqlConnection(constr);

                string squery = "select * from Appointment_Dept where Is_Approved = '" + true + "' and AppointmentID = ' " + Convert.ToInt32(e.CommandArgument) + "'";

                SqlCommand scd = new SqlCommand(squery, ob);
                ob.Open();
                SqlDataReader sdr = scd.ExecuteReader();
                if (sdr.HasRows)
                {
                    Response.Write("<script>alert('Appointment Already Entertained')</script>");
                    return;
                }
                /*int app_ID = Convert.ToInt32(e.CommandArgument);
                //Response.Redirect("WebForm3.aspx");
                string constring = "Data Source=DESKTOP-OO1BBQN\\SQLEXPRESS;Initial Catalog=Official_DC_Office;Integrated Security=True";

                SqlConnection obj = new SqlConnection(constring);

                string uquery = "update Appointment_Dept set Is_Approved = '" + true + "' ,Approved_on =  convert(varchar, getdate(), 23)  , Approved_by = '" + userid + "' where AppointmentID='" + app_ID + "';";

                SqlCommand sc = new SqlCommand(uquery, obj);
                obj.Open();
                sc.ExecuteNonQuery();*/
                Session["appoint"] = Convert.ToInt32(e.CommandArgument);
                Response.Write("<script>alert('Email jaye ga with remark doosre page pe')</script>");
                Response.Redirect("RejectAppointment.aspx");
            }
        }
    }
}