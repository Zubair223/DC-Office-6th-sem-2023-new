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
    public partial class WebForm20 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string em = TextBox2.Text.Trim();


            string conStr = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;

            SqlConnection obj = new SqlConnection(conStr);

            string sQuery = "select * from Citizen_Register where email = '" + em + "';";
            //string pass = "select password from register_log where password = '" + sQuery + "' and username ='" + u + "';";




            string id = "";
            //string password = "";

            SqlCommand cmd = new SqlCommand(sQuery, obj);
            //cmd.Parameters.AddWithValue("email", TextBox1.Text);
            TextBox2.Text = "";
            obj.Open();

            using (SqlDataReader sdr = cmd.ExecuteReader())
            {

                if (sdr.Read())
                {
                    id = sdr["ApplicationID"].ToString().Trim();
                    //password = sdr["password"].ToString();




                    try
                    {
                        using (MailMessage mail = new MailMessage())
                        {

                            mail.From = new MailAddress("adorationmt1320@gmail.com");
                            mail.To.Add(em);
                            mail.Subject = "Forgot password";
                            mail.Body = "Your Application ID for citizen login is " + id + "\n" + ". Regards ADMIN TEAM ";
                            mail.IsBodyHtml = true;


                            using (SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587))
                            {
                                smtp.Credentials = new System.Net.NetworkCredential("adorationmt1320@gmail.com", "dbwnjjqevofgdzvl");
                                smtp.EnableSsl = true;
                                smtp.Send(mail);
                                //Label3.Text = "Successful execution of mail";
                                Response.Write("<script>alert('Mail Sent')</script>");
                            }

                        }
                    }

                    catch (Exception)
                    {
                        Response.Write("<script>alert('Connection failed due to no internet ')</script>");
                        obj.Close();
                    }
                }
                else
                {
                    Response.Write("<script>alert('Wrong email')</script>");
                }
            }
        }
    }
}