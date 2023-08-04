using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Official_DC_Office
{
    public partial class WebForm16 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Page.IsPostBack == false)
            {
                cvDateTime.ValueToCompare = DateTime.Now.ToShortDateString();
                
                //Page.DataBind();
                //CompareValidator1.ValueToCompare = "DateTime.Now.ToString(dd/MM/yyyy)";


                string msg = Label1.Text.Trim();

                string p = TextBox7.Text.Trim();


                string conString = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;

                SqlConnection con = new SqlConnection(conString);
                string userid = Session["id"].ToString();
                string passwd = Session["pas"].ToString();
                string handlername = Session["n"].ToString();
                /* if(userid == passwd)
                 {

                 }*/
                string sQuery = "select handler from admin_insert where userid ='" + userid + "' and passwd = '" + passwd + "' ;";
                /*TextBox1.Text = " ";

                TextBox2.Text = " ";*/
                SqlCommand sc = new SqlCommand(sQuery, con);
                con.Open();
                SqlDataReader sd = sc.ExecuteReader();
                //sd.Read();
                //Session["id"] = sd["userid"].ToString();
                // Session["pas"] = sd["passwd"].ToString();
                //string sQuery = "select  from admin_insert where userid ='" + userid + "' and passwd = '" + passwd + "' ;";
                if (sd.HasRows)
                {
                    //Response.Write("<script>alert('Dept Login')</script>");
                    //msg = 
                    Label1.Text = handlername;
                    TextBox7.Text = userid;

                }
                else
                {
                    Response.Write("<script>alert('Not login')</script>");
                    con.Close();
                }



                /*   string constring = "Data Source=DESKTOP-OO1BBQN\\SQLEXPRESS;Initial Catalog=Official_DC_Office;Integrated Security=True";

                   SqlConnection obj = new SqlConnection(constring);
                   string squery = "select  *  from  C_appointment where userid='" + userid + "';";
                   SqlCommand scd = new SqlCommand(squery, obj);
                   obj.Open();

                   SqlDataReader sdr = scd.ExecuteReader();
                   if (sdr.HasRows)
                   {
                       GridView1.DataSource = sdr;
                       GridView1.DataBind();
                       obj.Close();
                   }
                   else
                   {
                       Response.Write("<script>alert('table is empty')</script>");
                   }
                   TextBox7.Text = userid;*/

            }
        }

     

        protected void Button1_Click1(object sender, EventArgs e)
        {
            //string userid = TextBox1.Text;
            string date = TextBox2.Text;
            string st_time = TextBox3.Text;
            string end_time = TextBox4.Text;
            string visitor = TextBox5.Text;
            string remark = TextBox6.Text;
            //string user = TextBox7.Text;
            //= Session["userid"].ToString();


            string constring = System.Configuration.ConfigurationManager.ConnectionStrings["dcoffconstr"].ConnectionString;

            SqlConnection obj = new SqlConnection(constring);
            string iquery = "insert into C_appointment (date,start_time,end_time,n_visitor,remarks,userid) values('" + date + "','" + st_time + "','" + end_time + "','" + visitor + "','" + remark + "','" + TextBox7.Text + "');";
            
            //string squery = "select * from admin_insert where mail = '" + email + "';";
            string dcbuery = "select * from C_appointment where date ='"+date+"' and userid = '"+TextBox7.Text +"' ";

            obj.Open();
            SqlCommand command = new SqlCommand(dcbuery, obj);


            SqlDataReader sdr = command.ExecuteReader();
            if(sdr.HasRows)
            {
                obj.Close();
                Label2.Text = "Slot Already Added";
                return;
            
            }
            SqlConnection objj = new SqlConnection(constring);
            objj.Open();
            SqlCommand cmd = new SqlCommand(iquery, objj);

            int x = cmd.ExecuteNonQuery();
            if (x == 1)
            {
                Label2.Text = "Slot Added";
                objj.Close();
            }
            else
            {
                Label2.Text = "Not added";
                
            }
        }

     
    }
}