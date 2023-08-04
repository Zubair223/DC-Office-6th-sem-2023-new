using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Official_DC_Office
{
    public partial class officer_Marked : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                string str = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;
                //lblmsg.Visible = false;


                SqlConnection con = new SqlConnection(str);
                string com = "Select * from admin_insert where role='Sub Office'";
                SqlDataAdapter adpt = new SqlDataAdapter(com, con);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                DropDownList1.DataSource = dt;
                /*            DropDownList1.Items.Clear();

                            DropDownList1.DataBind();*/
                DropDownList1.DataTextField = "ofDesign";
                DropDownList1.DataValueField = "userid";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, new ListItem("--Option--", "0"));

            }
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            string constring = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;

            SqlConnection obj = new SqlConnection(constring);
            string squery = "select  AppointmentID,Dept_user_ID,ApplicantID,SlotID,Subject,filepath,Is_Approved,Approved_by  from  Appointment_Dept where AppointmentID ='"+TextBox1.Text+ "' and Dept_user_ID = '"+Session["id"].ToString()+"' and Is_Approved = '"+true+"';";
            SqlCommand sc = new SqlCommand(squery, obj);
            obj.Open();

            SqlDataReader sdr = sc.ExecuteReader();
            if (sdr.HasRows)
            {
                GridView1.DataSource = sdr;
                GridView1.DataBind();
                obj.Close();
            }
            else
            {
                Response.Write("<script>alert('Wrong Appointment ID')</script>");
                GridView1.Visible = false;
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string conString = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;

            SqlConnection con = new SqlConnection(conString);

            //string iQuery = insert into Marked_Application (AppointmentID,ApplicantID,DeptID,Date,Marked_DeptId,marked_Remark,Uploaded_FileName,Priority,Due_Date,Currentstatus)
                string squery = "select * from Appointment_Dept where AppointmentID ='" + TextBox1.Text + "' and Dept_user_ID = '" + Session["id"].ToString() + "' and Is_Approved = '" + true + "';";
            //string iquery = "INSERT INTO Marked_Application(ApplicantID, DeptID, AppointmentID,  Date, Marked_DeptId, marked_Remark, Uploaded_FileName, Priority, Due_Date, Currentstatus) values((SELECT "+Dept_user_ID+", ApplicantID FROM Appointment_Dept),TextBox1.Text,DropDownList1.SelectedValue,TextBox2.Text,FileUpload1.FileName,DropDownList2.SelectedValue,TextBox3.Text) ;

              SqlCommand sc = new SqlCommand(squery, con);
              con.Open();
              SqlDataReader sd = sc.ExecuteReader();
              if(sd.HasRows)
            {
                sd.Read();
               

                string dept_ID = sd["Dept_user_id"].ToString();
                string App_ID = sd["ApplicantID"].ToString();
                con.Close();
                string iQuery = "insert into Marked_Application(AppointmentID, ApplicantID, DeptID, Date, Marked_Dept, marked_Remark, Uploaded_FileName, Priority, Due_Date, Currentstatus) values('" + TextBox1.Text + "', '" + App_ID + "',' " + dept_ID + "', convert(varchar, getdate(), 23) , '" + DropDownList1.SelectedItem + "','" + TextBox2.Text + "', '" + FileUpload1.FileName + "',' " + DropDownList2.SelectedValue + "','" + TextBox3.Text + "', 'pending' );";
                SqlConnection conn = new SqlConnection(conString);
                
                SqlCommand cmd = new SqlCommand(iQuery, conn);
                conn.Open();
                try
                {
                    int x = cmd.ExecuteNonQuery();
                    if (x == 1)
                    {
                        Response.Write("<script>alert('Inserted Success')</script>");
                        conn.Close();
                    }
                    else
                    {
                        Response.Write("< script > alert('Not Inserted ') </ script >");
                    }
                }
                catch(SqlException      )
                {
                    Response.Write("<script>alert('AppointmentID already marked to line dept')</script>");
                }
            }
            

        }
    }
}