using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Official_DC_Office
{
    public partial class FileUpload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*if (!IsPostBack)
            {
                GetEmployees();
            }*/
        }

    /*    protected void btnUploadFile_click(object sender, EventArgs e)
        {

            //fetch the name of the file  
            string empFilename = Path.GetFileName(FileUploadEmployees.PostedFile.FileName);
            //fetch the file content type of the file  
            string FilecontentType = FileUploadEmployees.PostedFile.ContentType;
            //reads a content of the file  
            using (Stream s = FileUploadEmployees.PostedFile.InputStream)
            {
                using (BinaryReader br = new BinaryReader(s))
                {
                    byte[] Databytes = br.ReadBytes((Int32)s.Length);
                    //fetch connection string from the web.config file  
                    string ConnectionStrings = "Data Source=DESKTOP-OO1BBQN\\SQLEXPRESS;Initial Catalog=Official_DC_Office;Integrated Security=True ";
                    //create a database connection object  
                    using (SqlConnection con = new SqlConnection(ConnectionStrings))
                    {
                        string query = "INSERT INTO tblEmpIdentity (FileName,FileContentType,FileData ) VALUES ( @FileName, @FileContentType, @FileData)";
                        //create an object for SQL command class  
                        using (SqlCommand cmd = new SqlCommand(query))
                        {
                            cmd.Connection = con;
                            *//* cmd.Parameters.AddWithValue("@EmployeeID", ddlEmployees.SelectedItem.Value);
                             cmd.Parameters.AddWithValue("@EmployeeName", ddlEmployees.SelectedItem.Text);
                             cmd.Parameters.AddWithValue("@DocumentName", txtDocument.Text);*//*
                            cmd.Parameters.AddWithValue("@FileName", empFilename);
                            cmd.Parameters.AddWithValue("@FileContentType", FilecontentType);
                            cmd.Parameters.AddWithValue("@FileData", Databytes);
                            //open database connection  
                            con.Open();
                            //execute SQL statement   
                            cmd.ExecuteNonQuery();
                            con.Close();
                        }
                    }
                }
            }
            Response.Redirect(Request.Url.AbsoluteUri);
        }
*/
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {

                FileUpload1.SaveAs(Server.MapPath("/images/" + FileUpload1.FileName));
                Label1.Text = "Image Uploaded";
                Label1.ForeColor = System.Drawing.Color.ForestGreen;
            }
            else
            {
                Label1.Text = "Please Select your file";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (FileUpload2.HasFile)
            {
                string fileName = Path.Combine(Server.MapPath("~/images"), FileUpload2.FileName);
                FileUpload2.SaveAs(fileName);
                Label2.Text = "Image Uploaded";
                Label2.ForeColor = System.Drawing.Color.ForestGreen;
            }
            else
            {
                Label2.Text = "Please Select your file";
                Label2.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (FileUpload3.HasFile)
            {
                string fileName = Path.GetFileName(FileUpload3.PostedFile.FileName);
                FileUpload3.PostedFile.SaveAs(Server.MapPath("~/images/") + fileName);

                Label3.Text = "Image Uploaded";
                Label3.ForeColor = System.Drawing.Color.ForestGreen;
            }
            else
            {
                Label3.Text = "Please Select your file";
                Label3.ForeColor = System.Drawing.Color.Red;
            }
        }
        /* private void GetEmployees()
{
//fetch connection string from the web.config file  
string ConnectionStrings = "Data Source=DESKTOP-OO1BBQN\\SQLEXPRESS;Initial Catalog=Official_DC_Office;Integrated Security=True ";
//create a database connection object  
using (SqlConnection Connection = new SqlConnection(ConnectionStrings))
{
//create an object for SQL command class  
using (SqlCommand cmd = new SqlCommand())
{
cmd.CommandText = "SELECT FileID, EmployeeName, DocumentName, FileName, CONVERT(VARCHAR(50), FileData, 1) AS FileData  from tblEmpIdentity WITH (NOLOCK)";
cmd.Connection = Connection;
//open database connection  
Connection.Open();
//execute SQL statement   
grdEmployees.DataSource = cmd.ExecuteReader();
grdEmployees.DataBind();
Connection.Close();
}
}
}*/
    }


}
