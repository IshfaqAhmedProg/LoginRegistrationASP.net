using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace Project_finalV2.View
{
    public partial class PassVerification : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["txtUser"] != null)
                {
                    unbox.Text = Request.Cookies["txtUser"].Value;
                    Button1.Click += new EventHandler(Button1_Click);
                }

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            conn.Open();
            String query = "select count(*) from accounts where password='" + unbox.Text + "'";

            SqlCommand cmd = new SqlCommand(query, conn);
            String output = cmd.ExecuteScalar().ToString();
            if (output == "1")
            {
                Session["Pass"] = unbox.Text;
                Response.Redirect("~/View/Dashboard.aspx");
                Session.RemoveAll();
            }
            else
            {

                errlbl.Text = "Enter the correct Password";
                Response.Redirect("~/View/PassVerification.aspx");
            }

        }     
    }
}