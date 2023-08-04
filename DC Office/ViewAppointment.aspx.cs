using iTextSharp.text;
using iTextSharp.text.pdf;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace Official_DC_Office
{
    public partial class WebForm21 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
            {
            /*string applicant = Session["applicantID"].ToString();
          SqlDataSource1.SelectCommand = "select Appointment_Dept.AppointmentID,admin_insert.ofDesign,Appointment_Dept.ApplicantID,Appointment_Dept.SlotID,Appointment_Dept.Subject,Appointment_Dept.filepath,Appointment_Dept.Is_Approved from Appointment_Dept,admin_insert where Appointment_Dept.ApplicantID = '" + applicant + "' and Appointment_Dept.Is_Approved ='" + true + "' and Appointment_Dept.Dept_user_ID = admin_insert.userid;";*/
            //Accepted_Appointments();
           Accepted_Appointments();
           Rejected_Appointments();
           Pending_Appointments();
        }
        void Accepted_Appointments()
        {

            //string constring = "Data Source=DESKTOP-OO1BBQN\\SQLEXPRESS;Initial Catalog=Official_DC_Office;Integrated Security=True";
            string constring = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;
            string applicant = Session["applicantID"].ToString();

            SqlDataSource1.SelectCommand = "select Appointment_Dept.AppointmentID,admin_insert.ofDesign,Appointment_Dept.ApplicantID,Appointment_Dept.SlotID,Appointment_Dept.Subject,Appointment_Dept.filepath,Appointment_Dept.Is_Approved from Appointment_Dept,admin_insert where Appointment_Dept.ApplicantID = '" + applicant + "' and Appointment_Dept.Is_Approved ='" + true + "' and Appointment_Dept.Dept_user_ID = admin_insert.userid;";
            SqlConnection con = new SqlConnection(constring);
            SqlCommand sc = new SqlCommand(SqlDataSource1.SelectCommand, con);
            con.Open();

            SqlDataReader sdr = sc.ExecuteReader();
            if (sdr.HasRows) //bakwas
            {
                //string applicant = Appointment_Dept[GridView4.ToString();
                sdr.Read();
                Session["id"] = sdr["AppointmentID"].ToString();
                string x = Session["id"].ToString();
                
            }
        }
        void Rejected_Appointments()
        {
            string applicant = Session["applicantID"].ToString();


            //string constring = "Data Source=DESKTOP-OO1BBQN\\SQLEXPRESS;Initial Catalog=Official_DC_Office;Integrated Security=True";
            string constring = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;
            SqlConnection obj = new SqlConnection(constring);
            //string applicant_id = Request.QueryString["applicant_id"];
          
            //string squery = "select  *  from  ViewBookedAppointments where ApplicantID = '" + applicant_id + "';";
            string squery = "select AppointmentID,Dept_user_ID,ApplicantID,SlotID,Subject,filepath,Is_Approved,App_remark from Appointment_Dept where ApplicantID = '" + applicant + "' and App_remark is not Null;";//,Citizen_Register where  slotID and ApplicantID = '" + applicant_id + "';";
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
                //Response.Write("<script>alert('table is empty')</script>");
                Label2.Text = "Table is Empty";
            }
        }
        void Pending_Appointments()
        {
            //string constring = "Data Source=DESKTOP-OO1BBQN\\SQLEXPRESS;Initial Catalog=Official_DC_Office;Integrated Security=True";
            string applicant = Session["applicantID"].ToString();

            SqlDataSource2.SelectCommand = "select * from Appointment_Dept where ApplicantID = '" + applicant + "' and Is_Approved  is Null and App_remark is Null;";//,Citizen_Register where  slotID and ApplicantID = '" + applicant_id + "';";
            //string constring = "Data Source=DESKTOP-OO1BBQN\\SQLEXPRESS;Initial Catalog=Official_DC_Office;Integrated Security=True";
            string constring = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;
            SqlConnection obj = new SqlConnection(constring);
            //string applicant_id = Request.QueryString["applicant_id"];
         
            //string squery = "select  *  from  ViewBookedAppointments where ApplicantID = '" + applicant_id + "';";
            string squery = "select * from Appointment_Dept where ApplicantID = '" + applicant + "' and Is_Approved  is Null and App_remark is Null;";//,Citizen_Register where  slotID and ApplicantID = '" + applicant_id + "';";
            SqlCommand sc = new SqlCommand(squery, obj);
            obj.Open();

            SqlDataReader sdr = sc.ExecuteReader();
            if (sdr.HasRows)
            {
                sdr.Read();
                 //Session["deptID"] = sdr["Dept_user_ID"].ToString();
            }
            else
            {
                // Response.Write("<script>alert('table is empty')</script>");
                Label3.Text = "Table is Empty";
            }
        }

        protected void GridView4_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            //string userid = Session["id"].ToString();


            if (e.CommandName == "Download_Slip")
            {
                string[] commandArgs = e.CommandArgument.ToString().Split(new char[] { ',' });
                string scrapid = commandArgs[0];
                string uid = commandArgs[1];
                /* string appoint = Session["id"].ToString();                    //! For text download 
                 string applicant = Session["applicantID"].ToString();
                 Document pdfDoc = new Document(PageSize.A4, 0, 0, 0, 0);
                 PdfWriter pdfWriter = PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
                 pdfDoc.Open();
                 Paragraph Text = new Paragraph("This is to certifiy that your applicant id " + applicant + " bearing appointment no " + appoint + " is entertained ");
                 pdfDoc.Add(Text);
                 pdfWriter.CloseStream = false;
                 pdfDoc.Close();
                 Response.Buffer = true;
                 Response.ContentType = "application/pdf";
                 Response.AddHeader("content-disposition", "attachment;filename=Example.pdf");
                 Response.Cache.SetCacheability(HttpCacheability.NoCache);
                 Response.Write(pdfDoc);
                 Response.End();*/

                
                //string applicant_id = Request.QueryString["applicant_id"];

                //string squery = "select  *  from  ViewBookedAppointments where ApplicantID = '" + applicant_id + "';";
                //string query = "select * from Appointment_Dept.AppointmentID,admin_insert.ofDesign,Appointment_Dept.ApplicantID,Appointment_Dept.SlotID,Appointment_Dept.Approved_on,Appointment_Dept.Subject,Appointment_Dept.filepath,Appointment_Dept.Is_Approved,Citizen_Register.name,Citizen_Register.email from Appointment_Dept,admin_insert,Citizen_Register where Appointment_Dept.ApplicantID = '" + applicant + "' and Appointment_Dept.Is_Approved = '" + true + "' and Appointment_Dept.Dept_user_ID = admin_insert.userid and Citizen_Register.ApplicationID = '" + applicant + "' and Appointment_Dept.AppointmentID = '" + Session["Appointmentid"].ToString() + "' ; ";
                

                    // ! new lines start
                    Session["Appointmentid"] = uid;
               // Session["img"] = scrapid;
                string applicant = Session["applicantID"].ToString();

                // ! new lines ended

                //string constring = "Data Source=DESKTOP-OO1BBQN\\SQLEXPRESS;Initial Catalog=Official_DC_Office;Integrated Security=True";
                string constring = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;
                SqlConnection obj = new SqlConnection(constring);
                //string applicant_id = Request.QueryString["applicant_id"];

                //string squery = "select  *  from  ViewBookedAppointments where ApplicantID = '" + applicant_id + "';";
                string squery = "select Appointment_Dept.AppointmentID,admin_insert.ofDesign,admin_insert.userid,Appointment_Dept.ApplicantID,Appointment_Dept.SlotID,Appointment_Dept.Approved_on,Appointment_Dept.Subject,Appointment_Dept.filepath,Appointment_Dept.Is_Approved,Citizen_Register.name,Citizen_Register.email from Appointment_Dept,admin_insert,Citizen_Register where Appointment_Dept.ApplicantID = '" + applicant + "' and Appointment_Dept.Is_Approved = '" + true + "' and Appointment_Dept.Dept_user_ID = admin_insert.userid and Citizen_Register.ApplicationID = '"+applicant+ "' and Appointment_Dept.AppointmentID = '"+Session["Appointmentid"].ToString()+"' ; ";
                 SqlCommand sc = new SqlCommand(squery, obj);
                obj.Open();
                SqlDataReader sdr = sc.ExecuteReader();
                if (sdr.HasRows)
                {
                    sdr.Read();
                    Session["Appoint_ID"] = sdr["AppointmentID"].ToString();
                    Session["Applicant_ID"] = sdr["ApplicantID"].ToString();
                    Session["userid"] = sdr["userid"].ToString();
                    Session["of_Design"] = sdr["ofDesign"].ToString();
                    Session["SlotID"] = sdr["SlotID"].ToString();
                    Session["name"] = sdr["name"].ToString();
                    Session["email"] = sdr["email"].ToString();
                    Session["approved"] = sdr["Is_Approved"].ToString();
                    Session["approve_Date"] = sdr["Approved_on"].ToString();
                    
                    //string s = Session["path"].ToString();
                    
                }

                obj.Close();
                //string constr = "Data Source=DESKTOP-OO1BBQN\\SQLEXPRESS;Initial Catalog=Official_DC_Office;Integrated Security=True";
                string constr = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;
                SqlConnection ob = new SqlConnection(constr);
                
                string query = "select * from admin_insert where userid = '" + Session["userid"].ToString() + "';";
             
                SqlCommand s = new SqlCommand(query, ob);
                ob.Open();
                SqlDataReader sd = s.ExecuteReader();
                if (sd.HasRows)
                {
                    sd.Read();
                    Session["img"] = sd["filepath"].ToString();
                    Session["img2"] = sd["filepath2"].ToString();

                    ob.Close();
                }

                //! Image Displaying

                /* Document pdfDoc = new Document(PageSize.A4, 25, 10, 25, 10);
                 PdfWriter pdfWriter = PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
                 pdfDoc.Open();
                 byte[] file;
                 file = System.IO.File.ReadAllBytes(Server.MapPath("~/images/iphoto.jpg"));//ImagePath    
                 iTextSharp.text.Image jpg = iTextSharp.text.Image.GetInstance(file);
                 jpg.ScaleToFit(550F, 200F);//Set width and height in float    
                 Paragraph Text = new Paragraph("This is to certifiy that your applicant id " + applicant + " bearing appointment no " + appoint + " is entertained ");
                 pdfDoc.Add(jpg);
                 pdfWriter.CloseStream = false;
                 pdfDoc.Close();
                 Response.Buffer = true;
                 Response.ContentType = "application/pdf";
                 Response.AddHeader("content-disposition", "attachment;filename=Image.pdf");
                 Response.Cache.SetCacheability(HttpCacheability.NoCache);
                 Response.Write(pdfDoc);
                 Response.End();*/


                Response.Redirect("Appointment_Slip.aspx");









                //!important converting webform into pdf
                /*  try
                  {
                      using (StringWriter sw = new StringWriter())
                      {
                          using (HtmlTextWriter hw = new HtmlTextWriter(sw))
                          {

                              StringReader sr = new StringReader(sw.ToString());
                              //Document pdfDoc = new Document(PageSize.A4, 25, 10, 25, 10);

                              Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 10f);
                              PdfWriter pdfWriter = PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
                              pdfDoc.Open();
                              *//*  pdfDoc.NewPage();
                                pdfDoc.Add(new Chunk("WebForm3.aspx"));*//*
                              this.Page.VerifyRenderingInServerForm(hw);
                              XMLWorkerHelper.GetInstance().ParseXHtml(pdfWriter, pdfDoc, sr);
                              pdfDoc.Close();
                              *//* Paragraph Text = new Paragraph("This is test file");
                               pdfDoc.Add(Text);
                               pdfWriter.CloseStream = false;*//*

                              Response.Buffer = true;
                              Response.ContentType = "application/pdf";
                              Response.AddHeader("content-disposition", "attachment;filename=Example.pdf");
                              Response.Cache.SetCacheability(HttpCacheability.NoCache);
                              Response.Write(pdfDoc);
                              Response.End();
                          }
                      }
                  }
                  catch (Exception ex)
                   { Response.Write(ex.Message); }*/
            }
            if (e.CommandName == "Image")
            {
                // Response.Redirect("WebForm29.aspx");

                // Response.Redirect("WebForm29.aspx");
                //string constring = "Data Source=DESKTOP-OO1BBQN\\SQLEXPRESS;Initial Catalog=Official_DC_Office;Integrated Security=True";



                /*string constring = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;
                SqlConnection obj = new SqlConnection(constring);
                //string applicant_id = Request.QueryString["applicant_id"];
                
                //string squery = "select  *  from  ViewBookedAppointments where ApplicantID = '" + applicant_id + "';";
                string squery = "select * from Appointment_Dept where AppointmentID = '" + e.CommandArgument + "';";//,Citizen_Register where  slotID and ApplicantID = '" + applicant_id + "';";
                SqlCommand sc = new SqlCommand(squery, obj);
                obj.Open();
                SqlDataReader sdr = sc.ExecuteReader();
                if(sdr.HasRows)
                {
                    sdr.Read();
                    Session["path"] = sdr["filepath"].ToString();
                    string s = Session["path"].ToString();
                }*/








                Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 10f);
                
                PdfWriter pdfWriter = PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
                pdfDoc.Open();
                byte[] file;
                file = System.IO.File.ReadAllBytes(Server.MapPath((string)e.CommandArgument));//ImagePath    
                iTextSharp.text.Image jpg = iTextSharp.text.Image.GetInstance(file);
                //jpg.ScaleToFit(550F, 200F);//Set width and height in float    
                jpg.ScaleToFit(575F, 800F); // Paragraph Text = new Paragraph("This is to certifiy that your applicant id " + applicant + " bearing appointment no " + appoint + " is entertained ");
                pdfDoc.Add(jpg);
                pdfWriter.CloseStream = false;
                pdfDoc.Close();
                Response.Buffer = true;
                Response.ContentType = "application/pdf";
                Response.AddHeader("content-disposition", "attachment;filename=Image.pdf");
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.Write(pdfDoc);
                Response.End();
                

            }

            if (e.CommandName == "Actionbtn")
            {

                Session["AppointmentID"] = e.CommandArgument;
                Response.Redirect("WebForm35.aspx");



            }
            if (e.CommandName == "Status")
            {

                Session["AppointmentID"] = e.CommandArgument;
                Response.Redirect("WebForm36.aspx");



            }
        }

        protected void GridView3_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Reschedule")
            {
                // Session["deptid"]=e.CommandArgument;
                //string constring = "Data Source=DESKTOP-OO1BBQN\\SQLEXPRESS;Initial Catalog=Official_DC_Office;Integrated Security=True";
                string constring = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;
                string applicant = Session["applicantID"].ToString();

                SqlConnection obj = new SqlConnection(constring);
                //string applicant_id = Request.QueryString["applicant_id"];

                //string squery = "select  *  from  ViewBookedAppointments where ApplicantID = '" + applicant_id + "';";
                string squery = "select C_appointment.date,C_appointment.n_visitor,C_appointment.slotID,Appointment_Dept.AppointmentID,admin_insert.ofDesign,admin_insert.userid,Appointment_Dept.ApplicantID,Appointment_Dept.SlotID,Appointment_Dept.Approved_on,Appointment_Dept.Subject,Appointment_Dept.filepath,Appointment_Dept.Is_Approved,Citizen_Register.name,Citizen_Register.email from Appointment_Dept,admin_insert,Citizen_Register,C_appointment where Appointment_Dept.ApplicantID = '" + applicant + "' and Appointment_Dept.Is_Approved is  Null and Appointment_Dept.App_remark is  Null and Appointment_Dept.Dept_user_ID = admin_insert.userid and Citizen_Register.ApplicationID = '" + applicant + "' and Appointment_Dept.AppointmentID = '" + e.CommandArgument + "'and C_appointment.slotID = Appointment_Dept.SlotID ; ";
                SqlCommand sc = new SqlCommand(squery, obj);
                obj.Open();
                SqlDataReader sdr = sc.ExecuteReader();
                if (sdr.HasRows)
                {
                    sdr.Read();
                    Session["Appoint_ID"] = sdr["AppointmentID"].ToString();
                    Session["Applicant_ID"] = sdr["ApplicantID"].ToString();
                    Session["userid"] = sdr["userid"].ToString();
                    Session["of_Design"] = sdr["ofDesign"].ToString();
                    Session["SlotID"] = sdr["SlotID"].ToString();
                    Session["name"] = sdr["name"].ToString();
                    Session["email"] = sdr["email"].ToString();
                    Session["approved"] = sdr["Is_Approved"].ToString();
                    Session["approve_Date"] = sdr["Approved_on"].ToString();
                    Session["date"] = sdr["date"].ToString();
                    Session["visit"] = sdr["n_visitor"].ToString();
                    //string s = Session["path"].ToString();

                }
                Response.Redirect("WebForm32.aspx");

                /*  // Response.Redirect("WebForm29.aspx");
                  string constring = "Data Source=DESKTOP-OO1BBQN\\SQLEXPRESS;Initial Catalog=Official_DC_Office;Integrated Security=True";

                  SqlConnection obj = new SqlConnection(constring);
                  //string applicant_id = Request.QueryString["applicant_id"];

                  //string squery = "select  *  from  ViewBookedAppointments where ApplicantID = '" + applicant_id + "';";
                  string squery = "select * from Appointment_Dept where AppointmentID = '" + e.CommandArgument + "';";//,Citizen_Register where  slotID and ApplicantID = '" + applicant_id + "';";
                  SqlCommand sc = new SqlCommand(squery, obj);
                  obj.Open();
                  SqlDataReader sdr = sc.ExecuteReader();
                  if (sdr.HasRows)
                  {
                      sdr.Read();
                      Session["path"] = sdr["filepath"].ToString();
                      string s = Session["path"].ToString();
                  }
  */
            }

        }
    }
}