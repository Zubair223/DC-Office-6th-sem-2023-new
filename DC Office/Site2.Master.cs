using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Official_DC_Office
{
    public partial class Site2 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if ((string)Session["r2"] != "admin" || Session["r2"].ToString() == null)
                {
                    Response.Redirect("~/default1.aspx");
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("~/default1.aspx");
            }
        }
    }
}