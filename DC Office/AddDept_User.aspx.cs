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
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {

                string userid = TextBox1.Text;
                string passwd = TextBox2.Text;
                string email = TextBox3.Text;
                string phone = TextBox4.Text;
                string ofDesign = TextBox5.Text;
                string sec = TextBox6.Text;
                string handler = TextBox7.Text;
                string loc = TextBox8.Text;
                string role = dropdownrole.Text;


                string constring = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;

                SqlConnection obj = new SqlConnection(constring);
                string iquery = "insert into admin_insert (userid,passwd,mail,phone,ofDesign,sec,handler,loc,role) values('" + userid + "','" + passwd + "','" + email + "','" + phone + "','" + ofDesign + "','" + sec + "','" + handler + "','" + loc + "','" + role + "');";

                string squery = "select * from admin_insert where mail = '" + email + "';";


                SqlCommand sc = new SqlCommand(iquery, obj);
                SqlCommand sl = new SqlCommand(squery, obj);
                obj.Open();
                //TextBox1.Text = "";
                // TextBox2.Text = "";

                SqlDataReader sdr = sl.ExecuteReader();
                if (sdr.HasRows)
                {
                    Response.Write("<script>alert('Email Already Exists')</script>");
                    return ;
                }
                obj.Close();

                obj.Open();
                try
                {
                    int x = sc.ExecuteNonQuery();
                    if (x == 1)
                    {


                        try
                        {
                            using (MailMessage mail = new MailMessage())
                            {

                                mail.From = new MailAddress("adorationmt1320@gmail.com");
                                mail.To.Add(TextBox3.Text);
                                mail.Subject = "Department Login Credentials";
                                
                                mail.Body = "Your userid and password for departmental login is " + TextBox1.Text+"and "+ TextBox2.Text + " respectively Regards ADMIN TEAM ";
                                mail.IsBodyHtml = true;


                                using (SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587))
                                {
                                    smtp.Credentials = new System.Net.NetworkCredential("adorationmt1320@gmail.com", "mfthvtdbjwcwhwki");
                                    smtp.EnableSsl = true;
                                    smtp.Send(mail);
                                    //Label3.Text = "Successful execution of mail";
                                    Response.Write("<script>alert('Mail Sent')</script>");
                                }

                            }
                        }

                        catch (Exception)
                        {
                            Response.Write("<script>alert('Connection failed due to no internet')</script>");
                            string dquery = "delete from admin_insert where userid ='" + userid + "';";
                            SqlCommand sd = new SqlCommand(dquery, obj);
                            int del = sd.ExecuteNonQuery();
                            Response.Write("<script>alert('Please Enter your details with caution and check internet')</script>");
                            return;
                        }

                        Response.Write("<script>alert('Row inserted succesfully')</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('Row is not inserted')</script>");
                    }

                }
                catch (SqlException)
                {
                    Response.Write("<script>alert('Voilation of primary key usereid must be unique')</script>");
                }
                obj.Close();
            }

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (args.Value.Contains(" "))
            {
                args.IsValid = false;

            }
            else
            {
                args.IsValid = true;

            }

        }
        
    }
}












