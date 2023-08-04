using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Official_DC_Office
{
    public partial class WebForm36 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string s = Session["AppointmentID"].ToString();
            // string constring = string conString = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString; ;//"Data Source=DESKTOP-OO1BBQN\\SQLEXPRESS;Initial Catalog=Official_DC_Office;Integrated Security=True";
            string constring = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;

            SqlConnection obj = new SqlConnection(constring);

            //string squery = "select Appointment_Dept.AppointmentID,Appointment_Dept.ApplicantID,Appointment_Dept.SlotID,Appointment_Dept.Is_Approved,Appointment_Dept.Approved_on,admin_insert.ofDesign,admin_insert.userid,Marked_Application.AppointmentID,Marked_Application.Marked_Dept,Marked_Application.Currentstatus from Appointment_Dept,admin_insert,Marked_Application where Appointment_Dept.AppointmentID = '" + s + "' and  Marked_Application.AppointmentID = '" + s + "' and Appointment_Dept.Dept_user_ID = admin_insert.userid";
            string officerquery = "select Appointment_Dept.AppointmentID,Appointment_Dept.ApplicantID,Appointment_Dept.SlotID,Appointment_Dept.Is_Approved,Appointment_Dept.Approved_on,Appointment_Dept.App_remark, admin_insert.ofDesign,admin_insert.userid from Appointment_Dept,admin_insert where Appointment_Dept.AppointmentID = '" + s+"'  and Appointment_Dept.Dept_user_ID = admin_insert.userid";
            string linequery =    "select Marked_Application.AppointmentID,Marked_Application.Marked_Dept,Marked_Application.Currentstatus,admin_insert.ofDesign,admin_insert.userid from Marked_Application,admin_insert where Marked_Application.AppointmentID = '" + s + "' and Marked_Application.Marked_Dept = admin_insert.ofDesign";
            SqlCommand sc = new SqlCommand(officerquery, obj);
            SqlCommand line = new SqlCommand(linequery, obj);
            obj.Open();
            SqlDataReader sdr = sc.ExecuteReader();
            if (sdr.HasRows)
            {
                sdr.Read();
                string is_Approve = sdr["Is_Approved"].ToString();
                string userid = sdr["ApplicantID"].ToString();
                
                if (is_Approve == null)
                Label1.Text = "The Current status of Application is pending \n";
                else if(is_Approve == "True")
                    Label1.Text = "The Current status of Application is Approved by Department Officer ";
                else
                    Label1.Text = "The Current status of Application is Rejected by Department Officer ";
            }
            else
            {
                Label1.Text = "Nothing show";
            }
            obj.Close();
            obj.Open();
            SqlDataReader ls = line.ExecuteReader();
            if(ls.HasRows)
            {
                ls.Read();
                //string userid = ls["ApplicantID"].ToString();
                string Currentstatus = ls["Currentstatus"].ToString();
                if (Currentstatus == "Disposed")
                {
                    Label1.Text = "The Current status of Application is Finally Approved by Line Department Officer";
                }
            }


            
        }
    }
}