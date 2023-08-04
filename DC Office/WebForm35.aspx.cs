using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Official_DC_Office
{
    public partial class WebForm35 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string s = Session["AppointmentID"].ToString();
            //SqlDataSource1.SelectCommand = "select * from Marked_Application where Currentstatus = 'disposed' and AppointmentID = '"+s+"';";
            SqlDataSource1.SelectCommand = "select * from Marked_Application where  AppointmentID = '" + s + "';";
        }
    }
}