using iTextSharp.text;
using iTextSharp.text.pdf;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using iTextSharp.text.html.simpleparser;
using iTextSharp.tool.xml;

namespace Official_DC_Office
{
    public partial class WebForm30 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string appointment = Session["Appoint_ID"].ToString();
            string applicant = Session["Applicant_ID"].ToString();
            string officer = Session["of_Design"].ToString();
            string slot = Session["SlotID"].ToString();
            string name = Session["name"].ToString();
            string email = Session["email"].ToString();
            string approve = Session["approved"].ToString();
            string approve_date = Session["approve_Date"].ToString();
            string image = Session["img"].ToString();
            string image2 = Session["img2"].ToString();
            TextBox1.Text = name;
            TextBox2.Text = applicant;
            TextBox3.Text = email;
            TextBox4.Text = appointment;
            TextBox5.Text = officer;
            TextBox6.Text = approve;
            TextBox7.Text = slot;
            TextBox8.Text = approve_date;
            Image1.ImageUrl = image;
            Image2.ImageUrl = image2;
        }

        
        protected void Button1_Click(object sender, EventArgs e)
        {
            using (StringWriter sw = new StringWriter())
            {
                using (HtmlTextWriter hw = new HtmlTextWriter(sw))
                {
                    this.Page.RenderControl(hw);
                    StringReader sr = new StringReader(sw.ToString());
                    Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 10f);
                    PdfWriter writer = PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
                    pdfDoc.Open();
                    XMLWorkerHelper.GetInstance().ParseXHtml(writer, pdfDoc, sr);
                    pdfDoc.Close();
                    Response.ContentType = "application/pdf";
                    Response.AddHeader("content-disposition", "attachment;filename=file1.pdf");
                    Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    Response.Write(pdfDoc);
                    Response.End();

                }
            }




            /* Response.ContentType = "application/pdf";
             Response.AddHeader("content-disposition", "attachment;filename=TestPage.pdf");
             Response.Cache.SetCacheability(HttpCacheability.NoCache);
             StringWriter sw = new StringWriter();
             HtmlTextWriter hw = new HtmlTextWriter(sw);
             this.Page.RenderControl(hw);
             StringReader sr = new StringReader(sw.ToString());
             Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
             HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
             PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
             pdfDoc.Open();
             htmlparser.Parse(sr);
             pdfDoc.Close();
             Response.Write(pdfDoc);
             Response.End();*/
        }
    }
}