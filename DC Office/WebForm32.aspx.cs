using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Official_DC_Office
{
    public partial class WebForm32 : System.Web.UI.Page
    {
        //private object date;
        protected void Page_Load(object sender, EventArgs e)
        {
            string s = (Session["date"].ToString());
            DateTime dat = Convert.ToDateTime(s);
            TextBox1.Text = dat.ToString("yyyy-MM-dd");



            //   ! new lines start ......................
          if (IsPostBack == false)
            {
                //string strr = "Data Source=DESKTOP-OO1BBQN\\SQLEXPRESS;Initial Catalog=Official_DC_Office;Integrated Security=True";
                string strr = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;

                //convert(varchar(20), date, 105) as 
                SqlConnection c = new SqlConnection(strr);
                //string com = "Select * from C_appointment where date >= + convert(varchar, getdate(), 23) and +start_time >= +convert(varchar, getdate(), 8)   ";
                //string query = "Select * from C_appointment where date > + convert(varchar, getdate(), 23) and userid =  '" + userid + "';";
                string query = "Select slotID, convert(varchar(20), date, 105) as date, start_time,end_time,n_visitor,remarks,userid from C_appointment where date >  '" + TextBox1.Text + "' and userid = '" + Session["userid"].ToString() + "';";
                //select* from Appointment_Dept,C_appointment where C_appointment.date = '" +  + "' and C_appointment.userid = '" + Session["userid"].ToString() + "' and C_appointment.slotID = '" + Session["SlotID"] + "' and '" + TextBox1.Text + "' > '" +  + "' and '" +  + "' > '" + TextBox1.Text + "' and Appointment_Dept.AppointmentID = '" + Session["Appoint_ID"].ToString() + "'; ";
                SqlCommand cmod = new SqlCommand(query, c);
                c.Open();
                DataSet set = new DataSet();
                SqlDataAdapter adpt = new SqlDataAdapter(cmod);
                
                adpt.Fill(set);

                //set.Tables[0].Columns.Add("alias", typeof(string), "date+' '+ start_time +' '+ end_time");
                //set.Tables[0].Columns.Add("alias", typeof(string), "date+' Time From '+  start_time +' to '+ end_time");
                
                set.Tables[0].Columns.Add("alias", typeof(string), "' Date  '+date+' Time From '+  start_time +' to '+ end_time");
                DropDownList1.DataSource = set;
                try
                {
                    Session["date"] = set.Tables[0].Rows[0]["date"];
                    string date = Session["date"].ToString();
                    Session["alas"] = "alias";
                }
                catch(Exception)
                {
                    Response.Write("< script >alert('No Row found')</ script >");
                }
                DropDownList1.DataTextField = "alias";
                DropDownList1.DataValueField = "slotID";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, new ListItem("--Option--", "0"));

            }
            //   ! new lines end .........................

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            /* string s = (Session["date"].ToString());
             DateTime dat = Convert.ToDateTime(s);
             TextBox2.Text = dat.ToString("yyyy-MM-dd");*/



            //  string dt = .ToString(MM/dd/yyyy));
            //dt.ToString("MM/dd/yyyy");
            //Convert.ToDateTime( Session["date"].ToString());
            //string s = ToString();
            //string s = Session["date"].ToString("MM/dd/yyyy");




            // ! import
            /* string connect = " Data Source=DESKTOP-OO1BBQN\\SQLEXPRESS;Initial Catalog=Official_DC_Office;Integrated Security=True ";
             SqlConnection obb = new SqlConnection(connect);
             string dQuery = "select * from C_appointment where date = '" + TextBox2.Text + "' and date >    '" + TextBox1.Text + "' ;";
             obb.Open();
             SqlCommand comd = new SqlCommand(dQuery, obb);
             SqlDataReader sddr = comd.ExecuteReader();
             if (sddr.HasRows)
             {
                 //sdr.Read();
                 //if(sdr["date"].ToString() == TextBox2.Text)

                 sddr.Read();
                 Session["s"] = string.Format("{0:yyyy/MM/d}", sddr["date"].ToString());
                 //Response.Write("<script>alert('Right Date Selected')</script>");


                 obb.Close();
             }
             else
             {
                 Response.Write("<script>alert('Please schedule appointment on a valid date')</script>");
                 return;
             }*/
            // ! import



            /* //   ! new lines start ......................

             string strr = "Data Source=DESKTOP-OO1BBQN\\SQLEXPRESS;Initial Catalog=Official_DC_Office;Integrated Security=True";



             SqlConnection c = new SqlConnection(strr);
             //string com = "Select * from C_appointment where date >= + convert(varchar, getdate(), 23) and +start_time >= +convert(varchar, getdate(), 8)   ";
             //string query = "Select * from C_appointment where date > + convert(varchar, getdate(), 23) and userid =  '" + userid + "';";
             string query = "Select C_appointment.slotID, C_appointment.convert(varchar(20), date, 105) as date, C_appointment.start_time,C_appointment.end_time,C_appointment.n_visitor,C_appointment.remarks,C_appointment.userid,Appointment_Dept.AppointmentID from C_appointment where TextBox1.Text > " + string.Format("{ 0:yyyy / MM / d}", DateTime.Now.Date)+ " and TextBox2.Text > '"+TextBox1.Text+"' and userid = '" + Session["userid"].ToString() + "' and Appointment_Dept.AppointmentID = '"+ Convert.ToInt32(Session["Appoint_ID"])+"';";
             //select* from Appointment_Dept,C_appointment where C_appointment.date = '" +  + "' and C_appointment.userid = '" + Session["userid"].ToString() + "' and C_appointment.slotID = '" + Session["SlotID"] + "' and '" + TextBox1.Text + "' > '" +  + "' and '" +  + "' > '" + TextBox1.Text + "' and Appointment_Dept.AppointmentID = '" + Session["Appoint_ID"].ToString() + "'; ";
             SqlCommand cmod = new SqlCommand(query, c);
             c.Open();
             DataSet set = new DataSet();
             SqlDataAdapter adpt = new SqlDataAdapter(cmod);

             adpt.Fill(set);

             //set.Tables[0].Columns.Add("alias", typeof(string), "date+' '+ start_time +' '+ end_time");
             //set.Tables[0].Columns.Add("alias", typeof(string), "date+' Time From '+  start_time +' to '+ end_time");
             set.Tables[0].Columns.Add("alias", typeof(string), "' Date  '+date+' Time From '+  start_time +' to '+ end_time");
             DropDownList1.DataSource = set;

             Session["alas"] = "alias";

             DropDownList1.DataTextField = "alias";
             DropDownList1.DataValueField = "slotID";
             DropDownList1.DataBind();



             //   ! new lines end .........................*/
            // ! import
           /* string connection = " Data Source=DESKTOP-OO1BBQN\\SQLEXPRESS;Initial Catalog=Official_DC_Office;Integrated Security=True ";
            SqlConnection ob = new SqlConnection(connection);
            string dbQuery = "select * from Appointment_Dept,C_appointment where C_appointment.date = '" + TextBox1.Text + "' and C_appointment.userid = '" + Session["userid"].ToString() + "' and C_appointment.slotID = '" + Session["SlotID"] + "' and '" + TextBox1.Text + "' > '" + string.Format("{0:yyyy/MM/d}", DateTime.Now.Date) + "' and '" + TextBox2.Text + "' > '" + TextBox1.Text + "' and Appointment_Dept.AppointmentID = '" + Session["Appoint_ID"].ToString() + "'  ;";
            SqlCommand cmd = new SqlCommand(dbQuery, ob);
            ob.Open();



            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.HasRows)*/
            {
                // string str = "Data Source=DESKTOP-OO1BBQN\\SQLEXPRESS;Initial Catalog=Official_DC_Office;Integrated Security=True";
                string str = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;
                SqlConnection cnn = new SqlConnection(str);
                //string com = "Select * from C_appointment where date >= + convert(varchar, getdate(), 23) and +start_time >= +convert(varchar, getdate(), 8)   >  
                string s = (Session["date"].ToString());
                DateTime dat = Convert.ToDateTime(s);
                



                //string query = "Select * from C_appointment where  userid =  '" + s + "' and slotID ='" + DropDownList2.SelectedValue + "';"; // and alas ='"+DropDownList2.SelectedItem.Text+"'
                string squery = "select * from  C_appointment where date = '" + dat.ToString("yyyy-MM-dd") + "';";
                //string uquery = "update C_appointment set n_visitor =  '" + (Convert.ToInt32(v) + 1) + "' where slotID = '" + slot + "';";
                SqlCommand cd = new SqlCommand(squery, cnn);

                //string squery = select  
                cnn.Open();
                SqlDataReader sd = cd.ExecuteReader();
                if (sd.HasRows)
                {
                    sd.Read();
                    string ab = sd["date"].ToString();
                    DateTime da = Convert.ToDateTime(ab);
                    Session["a"] = da.ToString("yyyy-MM-dd");
                    Session["sl"] = sd["slotID"].ToString();


                    Session["ba"] = sd["n_visitor"].ToString();
                    if(Convert.ToInt32(Session["ba"]) == 0)
                    {
                        Response.Write("<script>alert('No Slot Avaliable')</script>");
                        return;
                    }
                }
                cnn.Close();


                //if(sdr["date"].ToString() == TextBox2.Text)

                // ! import
                //string st = "Data Source=DESKTOP-OO1BBQN\\SQLEXPRESS;Initial Catalog=Official_DC_Office;Integrated Security=True";
                string st = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;
                //Session["visit"] = sdr["n_visitor"].ToString();
                string v = Session["visit"].ToString();
            string slot = Session["SlotID"].ToString();
            //string s = Session["u_id"].ToString();
            SqlConnection conn = new SqlConnection(st);
                //string com = "Select * from C_appointment where date >= + convert(varchar, getdate(), 23) and +start_time >= +convert(varchar, getdate(), 8)   ";
                //string query = "Select * from C_appointment where  userid =  '" + s + "' and slotID ='" + DropDownList2.SelectedValue + "';"; // and alas ='"+DropDownList2.SelectedItem.Text+"'
                string uquerycurrent = "update C_appointment set n_visitor =  '" + (Convert.ToInt32(v) + 1) + "' where slotID = '" + slot + "';";
                string uquerynew = "update C_appointment set n_visitor =  '" + (Convert.ToInt32(Session["ba"].ToString()) - 1) + "' where slotID = '" + DropDownList1.SelectedValue + "';";
                string uQuery = "update  Appointment_Dept set SlotID = '" + (Convert.ToInt32(Session["sl"])) + "' where AppointmentID = '" + (Convert.ToInt32(Session["Appoint_ID"])) + "';";
                SqlCommand cod = new SqlCommand(uQuery, conn);
                SqlCommand cmdd = new SqlCommand(uquerycurrent, conn);
                SqlCommand cmmd = new SqlCommand(uquerynew, conn);


                //string squery = select  
                conn.Open();
                cmdd.ExecuteNonQuery();
                conn.Close();
                conn.Open();
                cmmd.ExecuteNonQuery();
                conn.Close();


               
                conn.Open();
                int f = cod.ExecuteNonQuery();
                if (f == 1)
                {
                    conn.Close();
                    Response.Write("<script>alert('Right Date Selected')</script>");
                }
                    
                //Session["Appoint_ID"]

                /*SqlDataReader sdr = cmdd.ExecuteReader();
                sdr.Read();
                string v = sdr["n_visitor"].ToString();*/
                /*int x = cmdd.ExecuteNonQuery();
           conn.Close();
           if (x == 1)
           {

               ob.Close();
           }*/
            }

           // else
           /* {
                Response.Write("<script>alert('Wrong Date Selected')</script>");
            }*/

                /* SqlConnection obj = new SqlConnection(constring);
                 string uquery = "update admin_insert set passwd='" + passwd + "', mail='" + email + "', phone='" + phone + "',  handler='" + handler + "',  filepath='" + path + "' where userid='" + userid + "';";

                 string squery = "select * from admin_insert where mail = '" + email + "';";


                 SqlCommand sc = new SqlCommand(uquery, obj);
                     SqlCommand sl = new SqlCommand(squery, obj);
                      obj.Open();
                      //TextBox1.Text = "";
                      // TextBox2.Text = "";*/

                /* SqlConnection o = new SqlConnection(cons);
                 //string uquery = "update admin_insert set passwd='" + passwd + "', mail='" + email + "', phone='" + phone + "',  handler='" + handler + "',  filepath='" + path + "' where userid='" + userid + "';";

                 string sQuery = "select slotID,n_visitor from C_appointment where date = '"+TextBox1.Text+"' and userid = ' "+ Session["userid"].ToString()+"'  ;"; //actual line
                                                                                                                                                                     //select* from C_appointment where date = '2022-06-30' a'nd userid = 'i2349823' and 'TextBox1.Text' > 'DateTime.Now';
                 o.Open();
                 SqlCommand com = new SqlCommand(sQuery,o);

                 SqlDataReader sd = com.ExecuteReader();

                 if(sd.HasRows)
                 {
                     sd.Read();
                     //string x = convert(getdate(), 23);
                     string s = sd["n_visitor"].ToString();
                     o.Close();
                 }
                 else
                 {
                     Response.Write("<script>alert('Wrong Date Selected')</script>");
                     return;
                 }*/

            }

        
    }
}