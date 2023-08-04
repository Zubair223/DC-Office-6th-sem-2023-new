using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Official_DC_Office
{
    public partial class WebForm26 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string constr = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;

            SqlConnection ob = new SqlConnection(constr);

            string squery = "select * from Appointment_Dept where App_remark is not Null and AppointmentID = ' "+Convert.ToInt32(Session["appoint"])+"'";

            SqlCommand sc = new SqlCommand(squery, ob);
            ob.Open();
            SqlDataReader sdr = sc.ExecuteReader();
            if (sdr.HasRows)
            {
                Button1.Text = "Mail Sent";
                Button1.Enabled = false;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Session["appoint"]);
            string constring = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;
            SqlConnection obj = new SqlConnection(constring);
            //string applicant_id = Request.QueryString["applicant_id"];

            //string squery = "select  *  from  ViewBookedAppointments where ApplicantID = '" + applicant_id + "';";
            string squery = "select * from Appointment_Dept where AppointmentID = '" + x + "';";//,Citizen_Register where  slotID and ApplicantID = '" + applicant_id + "';";
            SqlCommand sc = new SqlCommand(squery, obj);
            obj.Open();


            //sdr.Read();

            using (SqlDataReader sdr = sc.ExecuteReader())
            {

                if (sdr.Read())
                {
                    //passwd = sdr["password"].ToString().Trim();
                    //password = sdr["password"].ToString();
                    string s = sdr["ApplicantID"].ToString();
                    obj.Close();




                    SqlConnection con = new SqlConnection(constring);
                    //string applicant_id = Request.QueryString["applicant_id"];

                    //string squery = "select  *  from  ViewBookedAppointments where ApplicantID = '" + applicant_id + "';";
                    string query = "select email from Citizen_Register where ApplicationID = '" + s + "';";//,Citizen_Register where  slotID and ApplicantID = '" + applicant_id + "';";
                    SqlCommand scom = new SqlCommand(query, con);
                    con.Open();

                    SqlDataReader sder = scom.ExecuteReader();
                    sder.Read();
                    if (sder.HasRows)
                    {
                        string email = sder["email"].ToString();

                        try
                        {
                            using (MailMessage mail = new MailMessage())
                            {

                                mail.From = new MailAddress("adorationmt1320@gmail.com");
                                mail.To.Add(email);
                                mail.Subject = "DC Office Appointment";
                                mail.Body = "Your Application is rejected due to  Reason :" + TextBox1.Text;
                                mail.IsBodyHtml = true;


                                using (SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587))
                                {
                                    smtp.Credentials = new System.Net.NetworkCredential("adorationmt1320@gmail.com", "mfthvtdbjwcwhwki");
                                    smtp.EnableSsl = true;
                                    smtp.Send(mail);
                                    string constr = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;

                                    SqlConnection ob = new SqlConnection(constr);

                                    string uquery = "update Appointment_Dept set App_remark = '" + TextBox1.Text + "' where  AppointmentID = '"+Convert.ToInt32(Session["appoint"])+"';";

                                    SqlCommand sqc = new SqlCommand(uquery, ob);
                                    ob.Open();
                                    sqc.ExecuteNonQuery();

                                    //Label3.Text = "Successful execution of mail";
                                    Response.Write("<script>alert('Mail Sent')</script>");
                                    Button1.Text = "Mail Sent";
                                    Button1.Enabled = false;
                                }
                               
                            }
                        }

                        catch (Exception ex)
                        {
                            
                            Response.Write("<script>alert('Connection failed due to no internet ')</script>");
                            con.Close();
                        }

                    }

                }

            }
        }
    }
}