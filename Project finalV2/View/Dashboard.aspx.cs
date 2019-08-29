using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_finalV2.View
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.Visible = false;

            if (Session["User"] != null)
            {
                Label1.Text = "Welcome " + Session["User"];
            }
            else
            {
                Response.Redirect("~/View/Login.aspx");
            }
        }

        protected void dbbtn_Click(object sender, EventArgs e)
        {
            Label1.Visible = false;
            GridView1.Visible = true;
        }

        protected void lg_Click(object sender, EventArgs e)
        {
            Session.Remove("User");
            Response.Redirect("~/View/Login.aspx");
        }
    }
}