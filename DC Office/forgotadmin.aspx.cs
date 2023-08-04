
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;



namespace Official_DC_Office
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        private string msg;

        public object MailboxAddress { get; private set; }
        public object TextFormat { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            /*string u = TextBox1.Text.Trim();


            string conStr = "Data Source=DESKTOP-HK59PKM\\SQLEXPRESS01;Initial Catalog=DC_office_official;Integrated Security=True";

            SqlConnection obj = new SqlConnection(conStr);

            string sQuery = "select password from admin_login where username = '" + u + "';";
            //string pass = "select password from register_log where password = '" + sQuery + "' and username ='" + u + "';";




            string passwd = "";
            //string password = "";

            SqlCommand cmd = new SqlCommand(sQuery, obj);
            //cmd.Parameters.AddWithValue("email", TextBox1.Text);
            obj.Open();
            using (SqlDataReader sdr = cmd.ExecuteReader())
            {

                if (sdr.Read())
                {
                    passwd = sdr["password"].ToString().Trim();
                    //password = sdr["password"].ToString();

*/
                    try
                    {
                        using (MailMessage msg = new MailMessage())
                        {

                            msg.From = new MailAddress("adorationmt1320@gmail.com");
                            msg.To.Add("zubairaltaf223@gmail.com");
                            msg.Subject = "Forgot password";
                            msg.Body = "Your password for admin login is " +"\n"+". Regards ADMIN";
                            msg.IsBodyHtml = true;


                            using (SmtpClient smt = new SmtpClient("smtp.gmail.com", 587))
                            {
                                smt.Credentials = new System.Net.NetworkCredential("adorationmt1320@gmail.com", "dbwnjjqevofgdzvl");
                                smt.EnableSsl = true;
                                smt.Send(msg);
                                //Label3.Text = "Successful execution of mail";
                                Response.Write("<script>alert('Mail Sent')</script>");
                            }

                        }
                    }

                    catch (Exception )
                    {
                        Response.Write("<script>alert('Wrong username')</script>");
                        //obj.Close();
                    }
             //   }
               // else
                {
                 //   Response.Write("<script>alert('Wrong username')</script>");
                }
            
        }
    }
}