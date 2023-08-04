using iTextSharp.text;
using iTextSharp.text.pdf;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Official_DC_Office
{
    public partial class WebForm24 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // int app = Convert.ToInt32(e.DataField);


        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            string userid = Session["id"].ToString();


            if (e.CommandName == "Approval")
            {


                //string constr = "Data Source=DESKTOP-OO1BBQN\\SQLEXPRESS;Initial Catalog=Official_DC_Office;Integrated Security=True";
                string constr = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;
                SqlConnection ob = new SqlConnection(constr);

                string squery = "select * from Appointment_Dept where App_remark is not Null and AppointmentID = ' " + Convert.ToInt32(e.CommandArgument) + "'";

                SqlCommand scd = new SqlCommand(squery, ob);
                ob.Open();
                SqlDataReader sdr = scd.ExecuteReader();
                if (sdr.HasRows)
                {
                    Response.Write("<script>alert('Appointment Already Rejected')</script>");
                    return;
                }



                int app_ID = Convert.ToInt32(e.CommandArgument);
                //Response.Redirect("WebForm3.aspx");
                //string constring = "Data Source=DESKTOP-OO1BBQN\\SQLEXPRESS;Initial Catalog=Official_DC_Office;Integrated Security=True";
                string constring = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;
                SqlConnection obj = new SqlConnection(constring);

                string uquery = "update Appointment_Dept set Is_Approved = '" + true + "' ,Approved_on =  convert(varchar, getdate(), 23)  , Approved_by = '" + userid + "' where AppointmentID='" + app_ID + "';";

                SqlCommand sc = new SqlCommand(uquery, obj);
                obj.Open();
                sc.ExecuteNonQuery();

                Response.Redirect("ApproveRejectRequests.aspx");

            }
            if (e.CommandName == "Rejection")
            {



                //string constr = "Data Source=DESKTOP-OO1BBQN\\SQLEXPRESS;Initial Catalog=Official_DC_Office;Integrated Security=True";
                string constr = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;
                SqlConnection ob = new SqlConnection(constr);

                string squery = "select * from Appointment_Dept where Is_Approved = '" + true + "' and AppointmentID = ' " + Convert.ToInt32(e.CommandArgument) + "'";

                SqlCommand scd = new SqlCommand(squery, ob);
                ob.Open();
                SqlDataReader sdr = scd.ExecuteReader();
                if (sdr.HasRows)
                {
                    Response.Write("<script>alert('Appointment Already Entertained')</script>");
                    return;
                }
                /*int app_ID = Convert.ToInt32(e.CommandArgument);
                //Response.Redirect("WebForm3.aspx");
                string constring = "Data Source=DESKTOP-OO1BBQN\\SQLEXPRESS;Initial Catalog=Official_DC_Office;Integrated Security=True";

                SqlConnection obj = new SqlConnection(constring);

                string uquery = "update Appointment_Dept set Is_Approved = '" + true + "' ,Approved_on =  convert(varchar, getdate(), 23)  , Approved_by = '" + userid + "' where AppointmentID='" + app_ID + "';";

                SqlCommand sc = new SqlCommand(uquery, obj);
                obj.Open();
                sc.ExecuteNonQuery();*/
                Session["appoint"] = Convert.ToInt32(e.CommandArgument);
                int x = Convert.ToInt32(Session["appoint"]);
                Response.Write("<script>alert('Email jaye ga with remark doosre page pe')</script>");
                Response.Redirect("RejectAppointment.aspx");
            }

            if (e.CommandName == "Action")
            {

                Session["AppointmentID"] = e.CommandArgument;
                Response.Redirect("WebForm35.aspx");
                


            }
            if (e.CommandName == "Image")
            {
                // Response.Redirect("WebForm29.aspx");

                // Response.Redirect("WebForm29.aspx");
                //string constring = "Data Source=DESKTOP-OO1BBQN\\SQLEXPRESS;Initial Catalog=Official_DC_Office;Integrated Security=True";
                string constring = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;
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


        }
    }
}