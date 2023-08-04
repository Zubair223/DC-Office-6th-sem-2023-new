using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Configuration;
namespace Official_DC_Office
{
    public partial class WebForm37 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
        //    string str = "Data Source=DESKTOP-OO1BBQN\\SQLEXPRESS;Initial Catalog=Official_DC_Office;Integrated Security=True";
            string str = ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;
            SqlConnection con = new SqlConnection(str);
            string query = "select * from admin_insert where mail = '" + TextBox1.Text + "' and phone = '" + TextBox2.Text + "';";
            con.Open();
            SqlCommand comd = new SqlCommand(query,con);
            SqlDataReader sdr = comd.ExecuteReader();
            if(sdr.HasRows)
            {
                sdr.Read();
                Session["mail"] = sdr["mail"].ToString();
                Session["userid"] = sdr["userid"].ToString();
                Session["passwd"] = sdr["passwd"].ToString();
                try
                {
                    using (MailMessage mail = new MailMessage())
                    {

                        mail.From = new MailAddress("adorationmt1320@gmail.com");
                        mail.To.Add(Session["mail"].ToString());
                        mail.Subject = "Forgot userid/password";
                        mail.Body = "Your Dept UserID for Dept login is " + Session["userid"].ToString() + "and password is" + Session["passwd"].ToString() + "\n" + ". Regards ADMIN TEAM ";
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
                    con.Close();
                }
            }
            else
            {
                Response.Write("<script>alert('Not a dept user')</script>");
            }
        }
    }
}