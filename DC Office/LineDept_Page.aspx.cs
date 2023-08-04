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
    public partial class WebForm27 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Due date 
            //string constring = "Data Source=DESKTOP-OO1BBQN\\SQLEXPRESS;Initial Catalog=Official_DC_Office;Integrated Security=True";
            string constring = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;
            SqlConnection obj = new SqlConnection(constring);
            // string squery = "select  Marked_Application.AppointmentID,Marked_Application.ApplicantID,Marked_Application.DeptID,Marked_Application.Date,Marked_Application.Marked_Dept,Marked_Application.marked_Remark,Marked_Application.Uploaded_FileName,Marked_Application.Priority,Marked_Application.Due_date,Marked_Application.Currentstatus,admin_insert.ofDesign  from  Marked_Application,admin_insert where Marked_Application.Due_Date < '" + DateTime.Now.ToString("yyyy/MM/dd") + "' and Marked_Application.Currentstatus ='pending' and Marked_Application.Marked_dept = admin_insert.ofDesign;";
            string squery = "select  *  from  Marked_Application where Due_Date < '" + DateTime.Now.ToString("yyyy/MM/dd") + "' and Currentstatus ='pending' and Marked_dept = '" + Session["ofDesign"].ToString() + "';";


            SqlCommand sc = new SqlCommand(squery, obj);
            obj.Open();

            SqlDataReader sdr = sc.ExecuteReader();
            if (sdr.HasRows)
            {
                GridView2.DataSource = sdr;
                GridView2.DataBind();
                obj.Close();

            }
            else
            {
                Label7.Text = "No data in table";
                //Response.Write("<script>alert('table is empty')</script>");
            }

            //Due Date in next 5 days

            // string cons = "Data Source=DESKTOP-OO1BBQN\\SQLEXPRESS;Initial Catalog=Official_DC_Office;Integrated Security=True";
            string cons = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;
            SqlConnection ob = new SqlConnection(cons);
            string sq = "select  *  from  Marked_Application where Due_Date > '" + DateTime.Now.ToString("yyyy/MM/dd") + "' and Due_Date <= '" + DateTime.Now.AddDays(5).ToString("yyyy/MM/dd") + "' and Currentstatus ='pending' and Marked_dept = '" + Session["ofDesign"].ToString() + "';";
            SqlCommand s = new SqlCommand(sq, ob);
            ob.Open();

            SqlDataReader sd = s.ExecuteReader();
            if (sd.HasRows)
            {
                GridView3.DataSource = sd;
                GridView3.DataBind();
                ob.Close();
            }
            else
            {
                Label8.Text = "No data in table";
                //Response.Write("<script>alert('table is empty')</script>");
            }


            dispose();
        }
        void dispose()
        {





            string constring = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;

            SqlConnection obj = new SqlConnection(constring);
            string squery = "select  Citizen_Register.ApplicationID,Citizen_Register.email,Marked_Application.markedApp_Id,Marked_Application.AppointmentID,Marked_Application.ApplicantID,Marked_Application.DeptID,Marked_Application.Date,Marked_Application.Currentstatus from  Marked_Application,Citizen_Register where  Marked_Application.Currentstatus ='disposed' and Marked_Application.Marked_dept = '" + Session["ofDesign"].ToString() + "' and Marked_Application.ApplicantID =  Citizen_Register.ApplicationID  ;";
            SqlCommand sc = new SqlCommand(squery, obj);
            obj.Open();

            SqlDataReader sdr = sc.ExecuteReader();
            if (sdr.HasRows)
            {
                /*sdr.Read();
                //Session["email"] = sdr["email"].ToString();
                Session["ema    il"] = sdr["email"].ToString();*/


                GridView4.DataSource = sdr;
                GridView4.DataBind();



                obj.Close();


                try
                {
                    using (MailMessage mail = new MailMessage())
                    {

                        mail.From = new MailAddress("adorationmt1320@gmail.com");
                        //        mail.To.Add(Session["email"].ToString());
                        mail.To.Add("zubairaltaf223@gmail.com");
                        mail.Subject = "DC Office Appointment Diposed ";
                        //mail.Subject = "Over Due Applications";
                        //mail.Body = "Various Applications have passed over due date kindly take immediate action on those applications first ";
                        mail.Body = "Your Appointment  has been approved bearing Applicant ID as .... ";
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


        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandName == "View")
            {

                string[] commandArgs = e.CommandArgument.ToString().Split(new char[] { ',' });
                Session["marked"] = commandArgs[0];
                Session["App_id"] = commandArgs[1];
                Response.Redirect("WebForm34.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Button1.Text == "Close")
            {
                GridView1.Visible = true;
                GridView2.Visible = true;
                GridView3.Visible = true;
                GridView4.Visible = true;
                Label1.Visible = true;
                Label2.Visible = false;
                Label3.Visible = true;
                Label4.Visible = true;
                Label5.Visible = true;
                Label6.Visible = true;
                Label7.Visible = true;
                Label8.Visible = true;
                Button1.Text = "Notification";
            }
            else
            {
                GridView1.Visible = false;
                GridView2.Visible = false;
                GridView3.Visible = false;
                GridView4.Visible = false;
                Label1.Visible = false;
                Label3.Visible = false;
                Label4.Visible = false;
                Label5.Visible = false;
                Label6.Visible = false;
                Label2.Visible = true;
                // string constring = "Data Source=DESKTOP-OO1BBQN\\SQLEXPRESS;Initial Catalog=Official_DC_Office;Integrated Security=True";
                string constr = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;
                SqlConnection obj = new SqlConnection(constr);
                string squery = "select  *  from  Marked_Application where Due_Date < '" + DateTime.Now.ToString("yyyy/MM/dd") + "' and Currentstatus ='pending' and Marked_dept = '" + Session["ofDesign"].ToString() + "';";
                SqlCommand sc = new SqlCommand(squery, obj);
                obj.Open();

                SqlDataReader sdr = sc.ExecuteReader();
                if (sdr.HasRows)
                {
                    int x = 1;
                    while (sdr.Read())
                    {
                        /* GridView2.DataSource = sdr;
                         
                        string ConString = @"Data Source=PC\SQL;Initial Catalog=PingMonitorDB;Integrated Security=True";
                        SqlConnection con = new SqlConnection(ConString);
                        string CmdString = "SELECT host, ip FROM addhosts";
                        SqlCommand cmd = new SqlCommand(CmdString, con);
                        con.Open();
                        SqlDataReader reader = cmd.ExecuteReader();
                        while (reader.Read())
                        {
                            Label lbl = new Label();
                            lbl.Visible = true;
                            lbl.Text = reader["host" + "ip" + "   "].ToString();
                            lbl.BackColor = System.Drawing.Color.Orange;
                            this.Controls.Add(lbl);
                        }
                        con.Close();

                         GridView2.DataBind();
                         obj.Close();*/
                        string marked = sdr["markedApp_Id"].ToString();
                        string AppID = sdr["AppointmentID"].ToString();

                        string DueDate = sdr["Due_Date"].ToString();
                        string marked_Remark = sdr["markedApp_Id"].ToString();
                        string Piority = sdr["Priority"].ToString();

                        Label lbl = new Label();
                        lbl.Visible = true;
                        lbl.Text = "" + x + ". OverDue  Date of Applciant belonging AppointmentID as " + AppID + " was on " + DueDate + " with remark and priority as " + marked_Remark + " and " + Piority + " resp kindly take immediate action with no delay. </br>";
                        lbl.BackColor = System.Drawing.Color.Orange;
                        this.Controls.Add(lbl);


                        //                        Label2.Text = "OverDue Date of Applciant belonging AppointmentID as '" + AppID + "' was on '" + DueDate + "' with remark and priority as '" + marked_Remark + "' and '" + Piority + "' resp kindly take immediate action with no delay  <\br>";
                        x++;
                        Button1.Text = "Close";
                    }
                }
                else
                {
                    GridView1.Visible = true;
                    GridView2.Visible = true;
                    GridView3.Visible = true;
                    GridView4.Visible = true;
                    //Response.Write("<script>alert('table is empty')</script>");
                }
            }
        }
    }
}