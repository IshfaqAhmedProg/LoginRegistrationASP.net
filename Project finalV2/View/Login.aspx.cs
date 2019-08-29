using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Project_finalV2.Controller;
using Project_finalV2.Model;

namespace Project_finalV2.View
{
    public partial class Login : System.Web.UI.Page
    {
        static string user, password;
        static int tries = 0;
        LoginHelper Helper = new LoginHelper();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["txtUser"] != null)
                {
                    unbox.Text = Request.Cookies["txtUser"].Value;
                    Button1.Click += new EventHandler(Button1_Click);
                }
                else if (Session["User"] != null)
                {
                    unbox.Text = Session["User"].ToString();
                    Button2.Click += new EventHandler(Button2_Click);
                }

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["txtPassword"] != null)
                {
                    unbox.Text = Request.Cookies["txtPassword"].Value;
                    Button2.Click += new EventHandler(Button2_Click);
                }
                else if (Session["pass"] != null)
                {
                    unbox.Text = Session["pass"].ToString();
                    Button2.Click += new EventHandler(Button2_Click);
                }

            }

            if (Helper.userValid(unbox.Text) == "1")
            {
                user = unbox.Text;
                unbox.Text = "";
                unbox.TextMode = TextBoxMode.Password;
                ulbl.Text = "Password ";
                rem.Visible = false;
                remlbl.Visible = false;
                Button1.Visible = false;
                Button1.Dispose();
                Session["User"] = user;
            }
            else
            {
                errlbl.Text = "User Name doesnt exist";

            }
            Button2.Visible = true;
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            password = unbox.Text;

            if (Helper.passValid(user, password) == "1")
            {
                if (rem.Checked)
                {
                    Response.Cookies["txtUser"].Value = user;
                    Response.Cookies["txtPassword"].Value = password;
                    Response.Cookies["txtUser"].Expires = DateTime.Now.AddMinutes(1);
                    Response.Cookies["txtPassword"].Expires = DateTime.Now.AddMinutes(1);
                }

                else
                {
                    Response.Cookies["txtUser"].Expires = DateTime.Now.AddMinutes(-1);
                    Response.Cookies["txtPassword"].Expires = DateTime.Now.AddMinutes(-1);

                }
                Session["pass"] = password;
                Response.Redirect("~/View/Dashboard.aspx");
                Session.RemoveAll();



            }

            else
            {
                tries++;
                errlbl.Text = "Enter the correct Password";
                if (tries >= 3)
                {
                    Response.Redirect("~/View/PassVerification");
                }
            }
        }

    }
}