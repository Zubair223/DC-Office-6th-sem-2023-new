using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;                     
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Official_DC_Office
{
    public partial class WebForm18 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = TextBox1.Text;
            string email = TextBox2.Text;
            string phone = TextBox3.Text;
            string address = TextBox5.Text;
            Random r = new Random();
            //int applicantID = r.Next(11111111, 99999999); ! of no use 
            int paswrd = r.Next(11111111, 99999999);
            string constring = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;

            SqlConnection obj = new SqlConnection(constring);
            //string iquery = "insert into Citizen_Register"+
            //    "(ApplicationID,password,name,email,phone,address) "+
            //    "values( '" + applicantID + "' , '" + paswrd + "' , '" 
            //    + name + "' , '" + email + "' , '" + phone + "' , '" + address + "');";



            //string iquery = String.Format("insert into Citizen_Register (ApplicationID,password,name,email,phone,address) values('{0}','{1}','{2}','{3}','{4}','{5}')",  applicantID, paswrd, name, email, phone, address);
               

           // string query = String.Format("Select * from sometable where abc='{0}'", TextBox1.Text);
            

            string squery = "select * from Citizen_Register where email = '" + email + "';";
            obj.Close();
            //string query = "select ApplicationID from Citizen_Register order by ApplicationID  DESC ;";
            string query = "SELECT * FROM Citizen_Register WHERE ApplicationID = (SELECT MAX(ApplicationID) FROM Citizen_Register) ";
            SqlCommand command = new SqlCommand(query,obj);
            obj.Open();
            SqlDataReader sdr = command.ExecuteReader();
            if(sdr.HasRows)
            {
                sdr.Read();
                Session["app_id"] = sdr["ApplicationID"].ToString();
              
            }
            obj.Close();
            // SqlCommand sc = new SqlCommand(iquery, obj);
            obj.Open();
            SqlCommand sl = new SqlCommand(squery, obj);
      
            SqlDataAdapter da = new SqlDataAdapter(squery, constring);

            //DataTable ds = new DataTable();
            
            /*dTable.Rows.Add("paswrd");
            dTable.Rows.Add("name");
            dTable.Rows.Add("email");
            dTable.Rows.Add("phone");
            dTable.Rows.Add("address");
           */
           

            /*TextBox1.Text = "";
             TextBox2.Text = "";*/
            DataTable dt = new DataTable();
            da.Fill(dt);
            if(dt.Rows.Count>0)
            {
                Response.Write("<script>alert('Email Already Exists')</script>");
                return;
            }
            
            //SqlDataReader sdr = sl.ExecuteReader();
            //if (sdr.HasRows)
            //{
            //    Response.Write("<script>alert('Email Already Exists')</script>");
            //    return;
            //}
            obj.Close();                //insert delete update executenonquery  ,select  sqldatareader

            obj.Open();
            
                /* // int x = sc.ExecuteNonQuery();  
                 SqlConnectionStringBuilder build = new SqlConnectionStringBuilder();
                //dp.UpdateCommand = sc;
                 dp.Update(, "Citizen_Register");*/
                // if (x == 1)
                 




                SqlDataAdapter dp = new SqlDataAdapter("select ApplicationID,password,name,email,phone,address from Citizen_Register order by ApplicationID  ASC", obj);//DESC |
                DataTable dTable = new DataTable();
                dp.Fill(dTable);
                SqlCommandBuilder build = new SqlCommandBuilder(dp);
                int num = Convert.ToInt32(Session["app_id"]);
                //dTable.Rows.Add(((new Random()).Next(11111111, 99999999)),applicantID, paswrd, name, email, phone, address);
                dTable.Rows.Add(num + 100 , paswrd, name, email, phone, address);
                dp.Update(dTable);
                try
                {
                    using (MailMessage mail = new MailMessage())
                    {

                        mail.From = new MailAddress("adorationmt1320@gmail.com");
                        mail.To.Add(email);
                        mail.Subject = "Citizen Registration";
                        /*mail.Body = " Your  application id  is " + (num + 87) + "and password is" + paswrd;*/
                        //above line is wrong because num + 87 will add here only not in row in database
                    mail.Body = " Your  application id  is " + num  + "and password is" + paswrd;
                    mail.IsBodyHtml = true;

                    obj.Close();
                    using (SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587))
                        {
                            smtp.Credentials = new System.Net.NetworkCredential("adorationmt1320@gmail.com", "mfthvtdbjwcwhwki");
                            smtp.EnableSsl = true;
                            smtp.Send(mail);
                            //Label3.Text = "Successful execution of mail";
                            //Response.Write("<script>alert('Mail Sent')</script>");
                            Response.Write("<script>alert('Application ID and password send to email')</script>");
                            //Response.AppendHeader("Refresh", 1"url=Citizen_Login.aspx") ;
                            //Response.AppendHeader("Refresh", 1) ;
                            Response.AppendHeader("Refresh", "2;url=Citizen_Login.aspx");
                        }

                    }
                }
                catch (Exception)
                {

                    string dquery = "delete from Citizen_Register where ApplicationID ='" + num + 87 + "';";
                    SqlCommand sd = new SqlCommand(dquery, obj);
                    int del = sd.ExecuteNonQuery();
                    //Response.Write("<script>alert('Please Enter your details with caution and check internet')</script>");
                    Response.Write("<script>alert('Either Connection failed due to no internet or wrong email entered')</script>");
                    return;
                }
                //return;
                /*  {


                      try
                      {
                          using (MailMessage mail = new MailMessage())
                          {

                              mail.From = new MailAddress("adorationmt1320@gmail.com");
                              mail.To.Add(email);
                              mail.Subject = "Citizen Registration";
                              mail.Body = " Your  application id  is " + applicantID + "and password is" + paswrd;
                              mail.IsBodyHtml = true;


                              using (SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587))
                              {
                                  smtp.Credentials = new System.Net.NetworkCredential("adorationmt1320@gmail.com", "dbwnjjqevofgdzvl");
                                  smtp.EnableSsl = true;
                                  smtp.Send(mail);
                                  //Label3.Text = "Successful execution of mail";
                                  //Response.Write("<script>alert('Mail Sent')</script>");
                                  Response.Write("<script>alert('Application ID and password send to email')</script>");
                                  //Response.AppendHeader("Refresh", 1"url=Citizen_Login.aspx") ;
                                  //Response.AppendHeader("Refresh", 1) ;
                                  Response.AppendHeader("Refresh", "2;url=Citizen_Login.aspx");
                              }

                          }
                          //Response.Redirect("Citizen_Login.aspx?value=Application ID send to email");
                      }

                      catch (Exception)
                      {

                          string dquery = "delete from Citizen_Register where ApplicationID ='" + applicantID + "';";
                          SqlCommand sd = new SqlCommand(dquery, obj);
                          int del = sd.ExecuteNonQuery();
                          //Response.Write("<script>alert('Please Enter your details with caution and check internet')</script>");
                          Response.Write("<script>alert('Either Connection failed due to no internet or wrong email entered')</script>");
                          return;
                      }






                  }
                  // else
                  {
                      Response.Write("<script>alert('Row is not inserted')</script>");
                  }
                */

            }
    
          
          
        
    }
}