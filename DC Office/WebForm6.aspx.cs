using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Official_DC_Office
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbAddDeptUsers_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string userid = TextBox1.Text;
            string passwd = TextBox2.Text;
            string email = TextBox3.Text;
            string phone = TextBox4.Text;
            string ofDesign = TextBox5.Text;
            string sec = TextBox6.Text;
            string handler = TextBox7.Text;
            string loc = TextBox8.Text;


            string constring = " Data Source=DESKTOP-OO1BBQN\\SQLEXPRESS;Initial Catalog=Official_DC_Office;Integrated Security=True ";

            SqlConnection obj = new SqlConnection(constring);
            string iquery = "insert into admin_insert (userid,passwd,mail,phone,ofDesign,sec,handler,loc) values('" + userid + "','" + passwd + "','" + email + "','" + phone + "','" + ofDesign + "','" + sec + "','" + handler + "','" + loc + "');";



            SqlCommand sc = new SqlCommand(iquery, obj);
            obj.Open();
            //TextBox1.Text = "";
            // TextBox2.Text = "";
            try
            {
                int x = sc.ExecuteNonQuery();
                if (x == 1)
                {
                    Response.Write("<script>alert('Row inserted succesfully')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Row is not inserted')</script>");
                }
                obj.Close();
            }
            catch(SqlException)
            {
                Response.Write("<script>alert('Voilation of primary key usereid must be unique')</script>");
            }
        }




        protected void Button2_Click(object sender, EventArgs e)
        {
            string constring = "Data Source=DESKTOP-OO1BBQN\\SQLEXPRESS;Initial Catalog=Official_DC_Office;Integrated Security=True";

            SqlConnection obj = new SqlConnection(constring);
            string squery = "select  *  from  admin_insert";
            SqlCommand sc = new SqlCommand(squery, obj);
            obj.Open();

            SqlDataReader sdr = sc.ExecuteReader();
            if (sdr.HasRows)
            {
              //  GridView1.DataSource = sdr;
               // GridView1.DataBind();
                obj.Close();
            }
            else
            {
                Response.Write("<script>alert('table is empty')</script>");
            }
        }




        protected void Button3_Click(object sender, EventArgs e)
        {
            //update button
            //string u = TextBox1.Text;
            //string p = TextBox2.Text;


            string constring = "  Data Source=DESKTOP-OO1BBQN\\SQLEXPRESS;Initial Catalog=Official_DC_Office;Integrated Security=True ";

            SqlConnection obj = new SqlConnection(constring);
            string squery = "select  *  from  admin_insert where userid='" + TextBox9.Text + "';";
            SqlCommand sc = new SqlCommand(squery, obj);
            obj.Open();
            SqlDataReader sdr = sc.ExecuteReader();
            if (sdr.HasRows)
            {
                sdr.Read();
                obj.Close();
                //string uquery = "insert into admin_log (password) values("+TextBox2.Text+ ")  username='"+TextBox2.Text+"' ;";
                string constr = " Data Source=DESKTOP-OO1BBQN\\SQLEXPRESS;Initial Catalog=Official_DC_Office;Integrated Security=True  ";

                SqlConnection ob = new SqlConnection(constr);
                //string uquery = "update admin_log set password values'"+TextBox2.Text+"' )  where username= '"+TextBox3.Text+"';";
                string uquery = "update admin_insert set passwd='" + TextBox2.Text + "';";
                ob.Open();

                SqlCommand dc = new SqlCommand(uquery, ob);
                int x = dc.ExecuteNonQuery();
                //TextBox1.Text = "";
                //TextBox2.Text = "";
                if (x == 1)
                {
                    Response.Write("<script>alert('Row updated succesfully')</script>");
                }
                ob.Close();
            }
            else
            {

                {
                    Response.Write("<script>alert('No such username inside table')</script>");
                }

            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string user = TextBox10.Text;
           /* string pass = TextBox2.Text;
            string mail = TextBox3.Text;
            string ph = TextBox4.Text;
            string ofDesign = TextBox5.Text;
            string sec = TextBox6.Text;
            string handler = TextBox7.Text;
            string loc = TextBox8.Text;*/
            

            string constring = "  Data Source=DESKTOP-OO1BBQN\\SQLEXPRESS;Initial Catalog=Official_DC_Office;Integrated Security=True  ";

            SqlConnection obj = new SqlConnection(constring);
            string dquery = "DELETE FROM admin_insert WHERE userid = '"+user+"'";
                //"" + user + "' and passwd='" + pass + "'and mail='" + mail + "'and phone='" + ph + "'and ofDesign='" + ofDesign + "'and sec='" + sec + "'and handler='" + handler + "'and loc='" + loc + "';";

            SqlCommand sc = new SqlCommand(dquery, obj);
            obj.Open();
           // TextBox1.Text = "";
           //TextBox2.Text = "";

            int x = sc.ExecuteNonQuery();
            if (x == 1)
            {
                Response.Write("<script>alert('Row deleted succesfully')</script>");
            }
            else
            {
                Response.Write("<script>alert('Row is not deleted')</script>");
            }
            obj.Close();
        }
    }
}

















/*




protected void Button1_Click(object sender, EventArgs e)
{
    string u = TextBox1.Text;
    string p = TextBox2.Text;


    string constring = " Data Source=DESKTOP-HK59PKM\\SQLEXPRESS01;Initial Catalog=Register;Integrated Security=True ";

    SqlConnection obj = new SqlConnection(constring);
    string iquery = "insert into admin_log (username,password) values('" + u + "','" + p + "');";

    SqlCommand sc = new SqlCommand(iquery, obj);
    obj.Open();
    TextBox1.Text = "";
    TextBox2.Text = "";

    int x = sc.ExecuteNonQuery();
    if (x == 1)
    {
        Response.Write("<script>alert('Row inserted succesfully')</script>");
    }
    else
    {
        Response.Write("<script>alert('Row is not inserted')</script>");
    }
    obj.Close();

}





*/





/*
protected void Button2_Click(object sender, EventArgs e)
{

    //string u = TextBox1.Text;
    //string p = TextBox2.Text;


    string constring = " Data Source=DESKTOP-HK59PKM\\SQLEXPRESS01;Initial Catalog=Register;Integrated Security=True ";

    SqlConnection obj = new SqlConnection(constring);
    string squery = "select  *  from  admin_log";
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
        Response.Write("<script>alert('table is empty')</script>");
    }

}
*/








/*
protected void Button3_Click(object sender, EventArgs e)
{
    //update button
    //string u = TextBox1.Text;
    //string p = TextBox2.Text;


    string constring = " Data Source=DESKTOP-HK59PKM\\SQLEXPRESS01;Initial Catalog=Register;Integrated Security=True";

    SqlConnection obj = new SqlConnection(constring);
    string squery = "select  *  from  admin_log where username='" + TextBox1.Text + "';";
    SqlCommand sc = new SqlCommand(squery, obj);
    obj.Open();
    SqlDataReader sdr = sc.ExecuteReader();
    if (sdr.HasRows)
    {
        sdr.Read();
        obj.Close();
        //string uquery = "insert into admin_log (password) values("+TextBox2.Text+ ")  username='"+TextBox2.Text+"' ;";
        string constr = " Data Source=DESKTOP-HK59PKM\\SQLEXPRESS01;Initial Catalog=Register;Integrated Security=True";

        SqlConnection ob = new SqlConnection(constr);
        //string uquery = "update admin_log set password values'"+TextBox2.Text+"' )  where username= '"+TextBox3.Text+"';";
        string uquery = "update admin_log set password='" + TextBox2.Text + "' where username = '" + TextBox1.Text + "';";
        ob.Open();

        SqlCommand dc = new SqlCommand(uquery, ob);
        int x = dc.ExecuteNonQuery();
        TextBox1.Text = "";
        TextBox2.Text = "";
        //if (y == 1)
        {
            Response.Write("<script>alert('Row updated succesfully')</script>");
        }
        ob.Close();
    }
    else
    {

        {
            Response.Write("<script>alert('No such username inside table')</script>");
        }

    }
}
*/











/*
protected void Button4_Click(object sender, EventArgs e)
{
    string u = TextBox1.Text;
    string p = TextBox2.Text;


    string constring = " Data Source=DESKTOP-HK59PKM\\SQLEXPRESS01;Initial Catalog=Register;Integrated Security=True ";

    SqlConnection obj = new SqlConnection(constring);
    string dquery = "DELETE FROM admin_log WHERE username='" + u + "' and password='" + p + "';";

    SqlCommand sc = new SqlCommand(dquery, obj);
    obj.Open();
    TextBox1.Text = "";
    TextBox2.Text = "";

    int x = sc.ExecuteNonQuery();
    if (x == 1)
    {
        Response.Write("<script>alert('Row deleted succesfully')</script>");
    }
    else
    {
        Response.Write("<script>alert('Row is not deleted')</script>");
    }
    obj.Close();
}*/