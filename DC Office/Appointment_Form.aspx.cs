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
    public partial class WebForm19 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string a = Session["name"].ToString();
            Label1.Text = a;
            if (Page.IsPostBack == false)
            {
                string str = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;
                //lblmsg.Visible = false;

                
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

            if (Page.IsPostBack == false)
            {
                
                DropDownList2.Items.Insert(0, new ListItem("--Option--", "0"));
               lblmsg.Text = "No SLot Selected";
                //lblmsg.Visible = false; !Important
            }
            /* if (Page.IsPostBack == false)
             { 

                         string str = "Data Source=DESKTOP-OO1BBQN\\SQLEXPRESS;Initial Catalog=Official_DC_Office;Integrated Security=True";



                 SqlConnection con = new SqlConnection(str);
                 //string com = "Select * from C_appointment where date >= + convert(varchar, getdate(), 23) and +start_time >= +convert(varchar, getdate(), 8)   ";
                 string com = "Select * from C_appointment where date > + convert(varchar, getdate(), 23)";


                 SqlCommand cmd = new SqlCommand(com,con);
                 con.Open(); 
                 DataSet set = new DataSet();
                 SqlDataAdapter adpt = new SqlDataAdapter(cmd);

                 adpt.Fill(set);

                 //set.Tables[0].Columns.Add("alias", typeof(string), "date+' '+ start_time +' '+ end_time");
                 set.Tables[0].Columns.Add("alias", typeof(string), "date+' '+  start_time +' '+ end_time");
                 DropDownList2.DataSource = set;

                 DropDownList2.DataTextField = "alias";
                 DropDownList2.DataValueField = "slotID";
                 DropDownList2.DataBind();
                 DropDownList2.Items.Insert(0, new ListItem("--Option--", "0"));
                 con.Close();

             }
 */

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {


            if (DropDownList1.SelectedItem.Text == "--Option--")
            {
                //Label14.Visible = false;
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add("--Option--");
                
                    // DropDownList2.Visible = false;
                    // DropDownList2.Visible = false;
                    //Label4.Visible = false;

                    lblmsg.Text = "No slot Selected";
            }
            

            else
            {
                lblmsg.Text = "No slot Selected"; //! Important

                string str = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;

                DropDownList2.Items.Clear();

                SqlConnection con = new SqlConnection(str);
                string squery = " Select * from admin_insert where ofDesign ='" + DropDownList1.SelectedItem.Text + "';";
                //" where ofDesign = '" + DropDownList1.SelectedItem.Text + "' ;";
                SqlCommand cmd = new SqlCommand(squery, con);
                con.Open();
                SqlDataReader sdr = cmd.ExecuteReader();

                if (sdr.HasRows)
                {

                    sdr.Read();
                    string userid = sdr["userid"].ToString();
                    Session["u_id"] = sdr["userid"].ToString();
                    string officer = sdr["ofDesign"].ToString();
                    con.Close();
                    if (DropDownList1.SelectedItem.Text == officer)
                    {
                        //lblmsg.Visible = true;   !Important




                        //string st = "Data Source=DESKTOP-OO1BBQN\\SQLEXPRESS;Initial Catalog=Official_DC_Office;Integrated Security=True";
                        //DropDownList6.Items.Clear();


                        //SqlConnection c = new SqlConnection(str);
                        //string com = " Select * from C_appointment where userid = '" + userid + "';";

                        string st = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;



                        SqlConnection conn = new SqlConnection(st);
                        //string com = "Select * from C_appointment where date >= + convert(varchar, getdate(), 23) and +start_time >= +convert(varchar, getdate(), 8)   ";
                        //string query = "Select * from C_appointment where date > + convert(varchar, getdate(), 23) and userid =  '" + userid + "';";
                        string query = "Select slotID, convert(varchar(20), date, 105) as date, start_time,end_time,n_visitor,remarks,userid from C_appointment where date > +convert(varchar, getdate(), 23) and userid = '" + userid + "';";

                        SqlCommand cmdd = new SqlCommand(query, conn);
                        con.Open();
                        DataSet set = new DataSet();
                        SqlDataAdapter adpt = new SqlDataAdapter(cmdd);

                        adpt.Fill(set);

                        //set.Tables[0].Columns.Add("alias", typeof(string), "date+' '+ start_time +' '+ end_time");
                        //set.Tables[0].Columns.Add("alias", typeof(string), "date+' Time From '+  start_time +' to '+ end_time");
                        set.Tables[0].Columns.Add("alias", typeof(string), "' Date  '+date+' Time From '+  start_time +' to '+ end_time");
                        DropDownList2.DataSource = set;

                        Session["alas"] = "alias";

                        DropDownList2.DataTextField = "alias";
                        DropDownList2.DataValueField = "slotID";
                        DropDownList2.DataBind();
                        DropDownList2.Items.Insert(0, new ListItem("--Option--", "0"));
                        conn.Close();
                        /*conn.Open();
                        //SqlCommand c = new SqlCommand(query, conn);
                        SqlDataReader sd = cmdd.ExecuteReader();
                        sd.Read();
                        string s = sd["n_visitor"].ToString();
                        if (sd.HasRows)
                        {




                            lblmsg.Text = s;
                        }


                        conn.Close();*/
                    }

                }
            }
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {


            if (DropDownList2.SelectedItem.Text == "--Option--")
            {
                //Label14.Visible = false;
                /* DropDownList2.Items.Clear();
                 DropDownList2.Items.Add("--Option--");*/
                // DropDownList2.Visible = false;
                // DropDownList2.Visible = false;
                //Label4.Visible = false;
                // lblmsg.Visible = false;
                lblmsg.Text = "No Slot selected";
            }
            else
            {
                string st = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;


                string s = Session["u_id"].ToString();
                SqlConnection conn = new SqlConnection(st);
                //string com = "Select * from C_appointment where date >= + convert(varchar, getdate(), 23) and +start_time >= +convert(varchar, getdate(), 8)   ";
                string query = "Select * from C_appointment where  userid =  '" + s + "' and slotID ='" + DropDownList2.SelectedValue + "';"; // and alas ='"+DropDownList2.SelectedItem.Text+"'

                SqlCommand cmdd = new SqlCommand(query, conn);
                conn.Open();
                SqlDataReader sdr = cmdd.ExecuteReader();
                sdr.Read();
                string v = sdr["n_visitor"].ToString();

                Session["visit"] = sdr["n_visitor"].ToString();


                if (sdr.HasRows)
                {
                    //if(DropDownList2.SelectedItem.Text == Session["alas"].ToString())
                    //if (DropDownList2.SelectedItem.Text == DropDownList2.SelectedItem)
                    {
                        lblmsg.Visible = true;
                        lblmsg.Text = v;
                      if(Convert.ToInt32(v) == 0)
                        {

                            lblmsg.Text = "All slots taken";
                            return;
                        }
                    }
                }
                else
                {
                    lblmsg.Text = "No Slot";
                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            //!new implement start
            string app = Session["applicantID"].ToString();
            string ConnectString = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;
            string sQuery = "select * from Appointment_Dept where slotID = '" + DropDownList2.SelectedValue + "' and ApplicantID='"+app+"';";
            SqlConnection connec = new SqlConnection(ConnectString);
            connec.Open();
            SqlCommand ob = new SqlCommand(sQuery, connec);

            SqlDataReader sddrr = ob.ExecuteReader();


            if (sddrr.HasRows)
            {
                // sddrr.Read();
                /*string visit = sddrr["n_visitor"].ToString();
                lblmsg.Text = "value decreased by one";*/
                Response.Write("<script>alert('Already Booked One Slot')</script>");
                return;
            }

            //!new implement end

                if (Page.IsValid)
            {


                // n_visitors ko  kam karna hai
                //update C_appointment set n_visitor = n_visitor - 1 where slotID = '1';
                string std = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;
                string ssquery = "Select * from C_appointment where  userid =  '" + Session["u_id"].ToString() + "' and slotID ='" + DropDownList2.SelectedValue + "';"; // and alas ='"+DropDownList2.SelectedItem.Text+"'
                SqlConnection ca = new SqlConnection(std);
                SqlCommand cm = new SqlCommand(ssquery, ca);
                ca.Open();
                SqlDataReader sd = cm.ExecuteReader();
                sd.Read();
                //string v = sdr["n_visitor"].ToString();

                Session["visit"] = sd["n_visitor"].ToString();

                string c = Session["visit"].ToString();
                ca.Close();
                if (c == "0")
                {


                    TextBox7.Text = "";
                    lblmsg.Text = "All slots taken";

                    return;

                }
                else
                {
                    string st = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;


                    string s = Session["u_id"].ToString();
                    SqlConnection conn = new SqlConnection(st);
                    //string com = "Select * from C_appointment where date >= + convert(varchar, getdate(), 23) and +start_time >= +convert(varchar, getdate(), 8)   ";
                    //string query = "Select * from C_appointment where  userid =  '" + s + "' and slotID ='" + DropDownList2.SelectedValue + "';"; // and alas ='"+DropDownList2.SelectedItem.Text+"'
                    string uquery = "update C_appointment set n_visitor =  '" + (Convert.ToInt32(c) - 1) + "' where slotID = '" + DropDownList2.SelectedValue + "';";
                    SqlCommand cmdd = new SqlCommand(uquery, conn);

                    //string squery = select  
                    conn.Open();
                    /*SqlDataReader sdr = cmdd.ExecuteReader();
                    sdr.Read();
                    string v = sdr["n_visitor"].ToString();*/


                    int x = cmdd.ExecuteNonQuery();
                    conn.Close();
                    if (x == 1)
                    {
                        string stq = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;
                        string squery = "select * from C_appointment where slotID = '" + DropDownList2.SelectedValue + "';";
                        SqlConnection con = new SqlConnection(stq);
                        con.Open();
                        SqlCommand obj = new SqlCommand(squery, con);

                        SqlDataReader sdr = obj.ExecuteReader();


                        if (sdr.HasRows)
                        {
                            sdr.Read();
                            string visit = sdr["n_visitor"].ToString();
                            lblmsg.Text = "value decreased by one" + visit;
                            

                            /*DropDownList1.Items.Add("--Option--");
                            DropDownList2.Items.Add("--Option--");*/
                            //yahan pe insert query likhni hai   !important
                            if (Convert.ToInt32(visit) < 0)
                            {
                                lblmsg.Text = "Appointment can't be booked without having slot";
                                return;
                            }
                        //C: \Users\HP\OneDrive\Desktop\New folder\repos\Official DC Office\Official DC Office\images\
                            else
                            {

                                /*FileUpload1.SaveAs(Server.MapPath("~/images/") + FileUpload1.FileName);
                                string path = "~/images/" + Path.GetFileName(FileUpload1.FileName);
                                string path = Path.Combine(Server.MapPath("~/images"), FileUpload1.FileName);
                                //FileUpload1.SaveAs(Server.MapPath("~/images/"));
*/
                                //folder upload
                                /*Server.MapPath(FileUpload1.FileName);
                                string path = Path.GetFileName(FileUpload1.PostedFile.FileName);*/
                                //string path = Server.MapPath("~/images/")+ Guid.NewGuid().ToString()  +"."+Path.GetExtension(FileUpload1.FileName);
                                string path = ("~/images/") + Guid.NewGuid().ToString() + "." + Path.GetExtension(FileUpload1.FileName);
                                //path = Path.Combine(Server.MapPath("~/images/")+ FileUpload1.FileName);
                                //FileUpload1.SaveAs(Server.MapPath("~/images/") + Path.GetFileName(path)) ;
                                FileUpload1.SaveAs(Server.MapPath("~/images/") + Path.GetFileName(path));

                                string strquery = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;
                                SqlConnection connect = new SqlConnection(strquery);



                                //string applicant = Request.QueryString["applicant_id"].ToString();
                                string applicant = Session["applicantID"].ToString();
                                     //Session["applicantID"] = sd["ApplicationID"].ToString();
                                string query = "insert into Appointment_Dept (Dept_user_ID,ApplicantID,date,SlotID,Subject,filepath) values('" + Session["u_id"].ToString() + "','" + applicant  + "' , '"+ DateTime.Now.ToString("yyyy/MM/dd") + "' ,'" + DropDownList2.SelectedValue + "', '" + TextBox7.Text + "', '" + path + "');";
                                connect.Open();
                                SqlCommand cmd = new SqlCommand(query, connect);
                                int a = cmd.ExecuteNonQuery();
                                if (a == 1)
                                {
                                    connect.Close();

                                    /*string applicant_id = Request.QueryString["applicant_id"];
                                    string q = "insert into View_booked_Appointments SlotID,ApplicantID values ('" + DropDownList2.SelectedValue + "','" + applicant_id + "');";
                                    SqlConnection conect = new SqlConnection(strquery);
                                    SqlCommand cmod = new SqlCommand(q, conect);
                                    conect.Open();
                                    cmod.ExecuteNonQuery();
                                    conect.Close();*/
                                    TextBox7.Text = "";
                                    lblmsg.Text = "No Slot Selected";
                                    DropDownList2.Items.Clear(); //new line   !important
                                    DropDownList2.Items.Add("--Option--"); // new line   !important
                                    DropDownList1.SelectedIndex = 0;

                                    //DropDownList2.SelectedIndex = 0;   //already line existing
                                    Response.Write("<script>alert('Appointment Booked Successful')</script>");

                                }
                                else
                                {
                                    return;
                                }
                            }

                        }

                    }
                }

                /*if (sdr.HasRows)
                {
                    //if(DropDownList2.SelectedItem.Text == Session["alas"

                }*/
            }
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (DropDownList2.SelectedIndex == 0)
            {
                args.IsValid = false;
               
            }
            else
            {
                args.IsValid = true;

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            // string applicant_unique = Request.QueryString["applicant_id"];
            //Response.Redirect("ViewAppointment.aspx?applicant_id=  '" + applicant_unique + "'");
            Response.Redirect("ViewAppointment.aspx");
        }
    }
}