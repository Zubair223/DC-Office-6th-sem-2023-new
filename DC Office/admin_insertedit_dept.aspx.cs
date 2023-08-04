using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Official_DC_Office
{
    public partial class insertedit : System.Web.UI.Page
    {
        string constr = "Data Source=DESKTOP-OO1BBQN\\SQLEXPRESS;Initial Catalog=Official_DC_Office;Integrated Security=True ";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                PopulateGridView();
            }
        }

        void PopulateGridView()
        {
            DataTable dtbl = new DataTable();
            using (SqlConnection con = new SqlConnection(constr))
            {
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter("select * from admin_insert",con);
                
                sda.Fill(dtbl);
            }
            if (dtbl.Rows.Count > 0)
            {
                GridView1.DataSource = dtbl;
                GridView1.DataBind();
            }
            else
            {
                dtbl.Rows.Add(dtbl.NewRow());
                GridView1.DataSource = dtbl;
                GridView1.DataBind();
                GridView1.Rows[0].Cells.Add(new TableCell());
                GridView1.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
                GridView1.Rows[0].Cells[0].Text = ".. No Data Found ..";
                GridView1.Rows[0].Cells[0].HorizontalAlign=HorizontalAlign.Center;
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName.Equals("Add"))
                {
                    using (SqlConnection con = new SqlConnection(constr))
                    {
                        con.Open();
                        string iquery = "insert into admin_insert(userid,passwd,mail,phone,ofDesign,sec,handler,loc,role) Values (@userid,@passwd,@mail,@phone,@ofDesign,@sec,@handler,@loc,@role)";
                        SqlCommand com = new SqlCommand(iquery, con);
                        com.Parameters.AddWithValue("@userid", (GridView1.FooterRow.FindControl("txtuseridfooter") as TextBox).Text.Trim());
                        com.Parameters.AddWithValue("@passwd", (GridView1.FooterRow.FindControl("txtpasswdfooter") as TextBox).Text.Trim());
                        com.Parameters.AddWithValue("@mail", (GridView1.FooterRow.FindControl("txtmailfooter") as TextBox).Text.Trim());
                        com.Parameters.AddWithValue("@phone", (GridView1.FooterRow.FindControl("txtphonefooter") as TextBox).Text.Trim());
                        com.Parameters.AddWithValue("@ofDesign", (GridView1.FooterRow.FindControl("txtofDesignfooter") as TextBox).Text.Trim());
                        com.Parameters.AddWithValue("@sec", (GridView1.FooterRow.FindControl("txtsecfooter") as TextBox).Text.Trim());
                        com.Parameters.AddWithValue("@handler", (GridView1.FooterRow.FindControl("txthandlerfooter") as TextBox).Text.Trim());
                        com.Parameters.AddWithValue("@loc", (GridView1.FooterRow.FindControl("txtlocfooter") as TextBox).Text.Trim());
                        com.Parameters.AddWithValue("@role", (GridView1.FooterRow.FindControl("txtrolefooter") as TextBox).Text.Trim());

                        com.ExecuteNonQuery();
                        PopulateGridView();
                        lblSuccess.Text = "New Record Added";
                        lblError.Text = "";



                    }
                }
            }
            catch (Exception ex)
            {

                lblSuccess.Text = "";
                lblError.Text = ex.Message;


            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            PopulateGridView();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            PopulateGridView();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                
                    using (SqlConnection con = new SqlConnection(constr))
                    {
                        con.Open(); 
                        string iquery = "update  admin_insert set userid=@userid,passwd=@passwd,mail=@mail,phone=@phone,ofDesign=@ofDesign,sec=@sec,handler=@handler,loc=@loc,role=@role where userid =@userid";
                        SqlCommand com = new SqlCommand(iquery, con);
                       
                        com.Parameters.AddWithValue("@passwd", (GridView1.Rows[e.RowIndex].FindControl("txtpasswd") as TextBox).Text.Trim());
                        com.Parameters.AddWithValue("@mail", (GridView1.Rows[e.RowIndex].FindControl("txtmail") as TextBox).Text.Trim());
                        com.Parameters.AddWithValue("@phone", (GridView1.Rows[e.RowIndex].FindControl("txtphone") as TextBox).Text.Trim());
                        com.Parameters.AddWithValue("@ofDesign", (GridView1.Rows[e.RowIndex].FindControl("txtofDesign") as TextBox).Text.Trim());
                        com.Parameters.AddWithValue("@sec", (GridView1.Rows[e.RowIndex].FindControl("txtsec") as TextBox).Text.Trim());
                        com.Parameters.AddWithValue("@handler", (GridView1.Rows[e.RowIndex].FindControl("txthandler") as TextBox).Text.Trim());
                        com.Parameters.AddWithValue("@loc", (GridView1.Rows[e.RowIndex].FindControl("txtloc") as TextBox).Text.Trim());
                        com.Parameters.AddWithValue("@role", (GridView1.Rows[e.RowIndex].FindControl("txtrole") as TextBox).Text.Trim());
                        com.Parameters.AddWithValue("@userid",(GridView1.DataKeys[e.RowIndex].Value.ToString()));
                        com.ExecuteNonQuery();
                        GridView1.EditIndex = -1;
                        PopulateGridView();
                        lblSuccess.Text = "Selected Record Updated";
                        lblError.Text = "";



                    }
                
            }
            catch (Exception ex)
            {

                lblSuccess.Text = "";
                lblError.Text = ex.Message;


            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {

                using (SqlConnection con = new SqlConnection(constr))
                {
                    con.Open();
                    string iquery = "delete from admin_insert where userid = @userid";
                    SqlCommand com = new SqlCommand(iquery, con);
              
                    com.Parameters.AddWithValue("@userid", (GridView1.DataKeys[e.RowIndex].Value.ToString()));
                    com.ExecuteNonQuery();
                    GridView1.EditIndex = -1;
                    PopulateGridView();
                    lblSuccess.Text = "Selected Record deleted";
                    lblError.Text = "";



                }

            }
            catch (Exception ex)
            {

                lblSuccess.Text = "";
                lblError.Text = ex.Message;


            }
        }
    }
}