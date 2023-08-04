using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Official_DC_Office
{
    public partial class WebForm13 : System.Web.UI.Page
    {



        protected void Page_Load(object sender, EventArgs e)
        {


            if (Page.IsPostBack == false)
            {
                string str = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;



                SqlConnection con = new SqlConnection(str);
                string com = " Select * from BookApp ";

                SqlDataAdapter adpt = new SqlDataAdapter(com, con);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                DropDownList2.DataSource = dt;
                /*            DropDownList1.Items.Clear();

                            DropDownList1.DataBind();*/
                DropDownList2.DataTextField = "Date";
                DropDownList2.DataValueField = "SlotID";
                DropDownList2.DataBind();
                DropDownList2.Items.Insert(0, new ListItem("--Option--", "0"));
                /*SqlCommand cmd = new SqlCommand(com, con);
                con.Open();
                SqlDataReader sdr = cmd.ExecuteReader();

                // SqlDataAdapter ad = new SqlDataAdapter(com, con);

                SqlDataAdapter adpta = new SqlDataAdapter(com, con);

                if (sdr.HasRows)
                {
                    sdr.Read();
                    //string s = sdr["Date"].ToString();
                    Session["f_time_t"] = sdr["from_to_time"].ToString();
                    //Session["date"] = sdr["Date"].ToString();
                    //TextBox4.Text = DateTime.Now.ToString("yyyy - MM - dd"); 
                    //DropDownList2.Text = Session["date"].ToString(); ;
                    DropDownList6.Text = Session["f_time_t"].ToString();
                }

                con.Close();*/

            }

            //DropDownList1.SelectedItem.Value.Visible = false;
            if (Page.IsPostBack == false)
            {
                string str = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;



                SqlConnection con = new SqlConnection(str);
                //string squery = " Select userid from admin_insert where type = '' ";
                string com = "Select * from BookApp";

                SqlDataAdapter adpt = new SqlDataAdapter(com, con);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                DropDownList6.DataSource = dt;
                /*            DropDownList1.Items.Clear();

                            DropDownList1.DataBind();*/
                DropDownList6.DataTextField = "from_to_time";
                DropDownList6.DataValueField = "SlotID";
                DropDownList6.DataBind();
                DropDownList6.Items.Insert(0, new ListItem("--Option--", "0"));
                /* SqlCommand cmd = new SqlCommand(com,con);
                 con.Open();
                 SqlDataReader sdr = cmd.ExecuteReader();

                // SqlDataAdapter ad = new SqlDataAdapter(com, con);

                 SqlDataAdapter adpta = new SqlDataAdapter(com, con);

                 if (sdr.HasRows)
                 {
                     sdr.Read();
                     //string s = sdr["Date"].ToString();
                     Session["f_time_t"] = sdr["from_to_time"].ToString();
                     //Session["date"] = sdr["Date"].ToString();
                     //TextBox4.Text = DateTime.Now.ToString("yyyy - MM - dd"); 
                     //DropDownList2.Text = Session["date"].ToString(); ;
                     DropDownList6.Text = Session["f_time_t"].ToString();
                 }

                 con.Close();
                */
            }

            if (Page.IsPostBack == false)
            {
                string str = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;



                SqlConnection con = new SqlConnection(str);
                string com = "Select * from admin_insert where role='Main Office'";
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

        /* protected void Button1_Click(object sender, EventArgs e)
          {
             SqlConnection con = new SqlConnection(str);
              SqlCommand cmd = new SqlCommand("select * from UserDetail where id = '" + DropDownList1.SelectedValue + "'", con);
              SqlDataAdapter Adpt = new SqlDataAdapter(cmd);
              DataTable dt = new DataTable();
              Adpt.Fill(dt);
              GridView1.DataSource = dt;
              GridView1.DataBind();
              Label1.Text = "record found";
          }*/
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //if (DropDownList1.SelectedItem.Text == "ADC")
            /*if (DropDownList6.Items == Session["f_time_t"].ToString())
            
                add Enabled = "False"*/


            //DropDownList6.Items.Clear();
            /*   
             }

             else
             {*/

            string str = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;



            SqlConnection con = new SqlConnection(str);
            string squery = " Select * from admin_insert where ofDesign = '" + DropDownList1.SelectedItem.Text + "' ;";
            SqlCommand cmd = new SqlCommand(squery, con);
            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();

            if (sdr.HasRows)
            {

                sdr.Read();
                string s = sdr["ofDesign"].ToString();



                if (DropDownList1.SelectedItem.Text == s)
                {

                    //string st = "Data Source=DESKTOP-OO1BBQN\\SQLEXPRESS;Initial Catalog=Official_DC_Office;Integrated Security=True";
                    DropDownList6.Items.Clear();

                    con.Close();
                    //SqlConnection c = new SqlConnection(str);
                    string com = " Select * from BookApp where type = '" + s + "';";
                    SqlCommand cd = new SqlCommand(com, con);
                    //DropDownList6.Items.Clear();
                    con.Open();
                    SqlDataReader sd = cd.ExecuteReader();

                    //if (sd.HasRows)
                    //while (sd.HasRows == true)
                    while (sd.Read())
                    {
                        //while(sd.Rows.Count() > 0)
                        //sd.Read();
                        if (sd.HasRows)
                        {
                            Session["sa"] = sd["from_to_time"].ToString();


                            DropDownList6.Items.Add(Session["sa"].ToString());
                            //if (DropDownList1.SelectedItem.Text != "--Option--")
                            DropDownList6.Visible = true;
                            DropDownList2.Visible = true;
                            Label4.Visible = true;



                            //DropDownList6.Items.Clear();
                            // DropDownList6.Items.Add(Session["f_time_t"].ToString());
                            Label14.Visible = true;
                           /* if (DropDownList1.SelectedItem.Text == "--Option--")
                            {
                                Label14.Visible = false;
                                DropDownList6.Items.Clear();
                                DropDownList6.Items.Add("--Option--");
                                DropDownList6.Visible = false;
                                DropDownList2.Visible = false;
                                Label4.Visible = false;


                                //DropDownList6.SelectedValue.remove();
                            }
*/
                        }
                    }


                }
                 else
                 {
                     Response.Write("<script>alert('No Slot Avaliable')<script>");
                 }
                con.Close();
            }
            else
            {
                Label14.Visible = false;
                DropDownList6.Items.Clear();
                DropDownList6.Items.Add("--Option--");
                DropDownList6.Visible = false;
                DropDownList2.Visible = false;
                Label4.Visible = false;
            }
        }
    

        protected void Button1_Click1(object sender, EventArgs e)
        {
            /*if (DropDownList1.SelectedItem.Text == "ADC")
            {
                Button1.Visible = false;
                DropDownList6.SelectedIndex == ;
            }*/
            // !Important       DropDownList6.Items.Remove(DropDownList6.SelectedItem.Text);     !Important

            Random r = new Random();
            int applicantID = r.Next(11111111, 99999999);
            string name = TextBox1.Text;

            string email = TextBox2.Text;
            string phone = TextBox3.Text;
            string deptuser = DropDownList1.SelectedItem.Text;
            string pin = TextBox6.Text;
            string date = TextBox8.Text;
            string address = TextBox5.Text;

            // string file = FileUpload1.FileName;
            string subject = TextBox7.Text;
            string slot = DropDownList6.SelectedItem.Text;

            using (Stream s = FileUpload1.PostedFile.InputStream)
            {
                using (BinaryReader br = new BinaryReader(s))
                {
                    byte[] Databytes = br.ReadBytes((Int32)s.Length);
                    //fetch connection string from the web.config file  
                    string ConnectionStrings = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;
                    //create a database connection object  
                    using (SqlConnection con = new SqlConnection(ConnectionStrings))
                    {
                        //string query = "INSERT INTO user_register (FileName,FileContentType,FileData ) VALUES ( @FileName, @FileContentType, @FileData)";
                        string query = "INSERT INTO user_register (applicantID,name,email,phone,deptuser,pin,date,address,files,subject,slot ) VALUES ( @applicantID,@name,@email,@phone,@deptuser,@pin,@date,@address,@files,@subject,@slot)";

                        //create an object for SQL command class  
                        using (SqlCommand cmd = new SqlCommand(query))
                        {
                            cmd.Connection = con;
                            //cmd.Parameters.AddWithValue("@EmployeeID", ddlEmployees.SelectedItem.Value);
                            //cmd.Parameters.AddWithValue("@EmployeeName", ddlEmployees.SelectedItem.Text);
                            //cmd.Parameters.AddWithValue("@DocumentName", txtDocument.Text);*/
                            cmd.Parameters.AddWithValue("@applicantID", applicantID);
                            cmd.Parameters.AddWithValue("@name", name);
                            cmd.Parameters.AddWithValue("@email", email);
                            cmd.Parameters.AddWithValue("@phone", phone);
                            cmd.Parameters.AddWithValue("@deptuser", deptuser);
                            cmd.Parameters.AddWithValue("@pin", pin);
                            cmd.Parameters.AddWithValue("@date", date);
                            cmd.Parameters.AddWithValue("@address", address);
                            cmd.Parameters.AddWithValue("@files", Databytes);
                            cmd.Parameters.AddWithValue("@subject", subject);
                            cmd.Parameters.AddWithValue("@slot", slot);
                            //open database connection  
                            con.Open();
                            //execute SQL statement   
                            cmd.ExecuteNonQuery();


                            con.Close();




                            /*string str = "Data Source=DESKTOP-OO1BBQN\\SQLEXPRESS;Initial Catalog=Official_DC_Office;Integrated Security=True";



                            SqlConnection conn = new SqlConnection(str);
                            string squery = " Select * from BookApp where type = 'True'";
                            SqlCommand cd = new SqlCommand(squery, con);
                            con.Open();
                            SqlDataReader sdar = cd.ExecuteReader();
                            if(sdar.HasRows)
                            {

                            }
                            

                            // if (sdr.HasRows)
                           
                            {

                                //sdr.Read();
                                //string s = sdr["ofDesign"].ToString();
                                string iquery = "insert into BookApp (status) values('false') where type = '"+DropDownList6.SelectedItem.Text+"';";

                                SqlCommand comd = new SqlCommand(iquery, conn);
                                con.Open();
                                //
                                int x = cd.ExecuteNonQuery();
                                //if (sdar.HasRows)
                               // if (x == 1)*/
                            DropDownList6.Items.Remove(DropDownList6.SelectedItem.Text);


                        
                            

                        }
                    }
                }
            }

        }
    }
}