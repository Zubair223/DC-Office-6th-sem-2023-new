using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System;
using System.Data.SqlClient;
using System.Net.Mail;

namespace Official_DC_Office
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string u = TextBox1.Text.Trim();


            string conStr = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;

            SqlConnection obj = new SqlConnection(conStr);

            string sQuery = "select email from admin_login where email = '" + u + "';";
            //string pass = "select password from register_log where password = '" + sQuery + "' and username ='" + u + "';";




            string passwd = "";
            //string password = "";

            SqlCommand cmd = new SqlCommand(sQuery, obj);
            //cmd.Parameters.AddWithValue("email", TextBox1.Text);
            TextBox1.Text = "";
            obj.Open();

            using (SqlDataReader sdr = cmd.ExecuteReader())
            {

                if (sdr.Read())
                {
                    passwd = sdr["password"].ToString().Trim();
                    //password = sdr["password"].ToString();

                 


                    try
                  {
                      using (MailMessage mail = new MailMessage())
                      {

                          mail.From = new MailAddress("adorationmt1320@gmail.com");
                            mail.To.Add("zubairaltaf223@gmail.com");
                            mail.Subject = "Forgot password";
                            mail.Body = "Your password for admin login is " + passwd + "\n" + ". Regards ADMIN TEAM ";
                            mail.IsBodyHtml = true;


                          using (SmtpClient smtp = new SmtpClient("smtp.gmail.com",587))
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