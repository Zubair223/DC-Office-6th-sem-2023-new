using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Official_DC_Office
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if ((string)Session["r1"] != "root")
                {
                    Response.Redirect("WebForm3.aspx");
                }
            }
            catch (NullReferenceException)
            {
                Response.Write("<script>alert('Not an Admin')</script>");
            }
            // Session["r"] = sd["username"].ToString();
        }
    }
}