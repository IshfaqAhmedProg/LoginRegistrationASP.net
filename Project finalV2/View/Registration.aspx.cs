using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using Project_finalV2.Controller;
using Project_finalV2.Model;

namespace Project_finalV2.View
{
    public partial class Registration : System.Web.UI.Page
    {
        internal bool se = false, une = false, fne = false, lne = false, pe = false, cpe = false, ee = false, dobe = false, tnce = false;
        static int emp = 0;
        Validation validate = new Validation();
        Account active;
        RegistrationHelper Helper = new RegistrationHelper();
        protected void Page_Load(object sender, EventArgs e)
        {
            unerr.Visible = false;
            fnerr.Visible = false;
            lnerr.Visible = false;
            perr.Visible = false;
            eerr.Visible = false;
            doberr.Visible = false;
            tncerr.Visible = false;
        }

        protected void Submit_Click(object sender, EventArgs e)
        {

            if (unbox.Text == "")
            {
                emp = 1;
                unerr.Visible = true;
                unerr.Text = "User Name Required";
            }
            if (fnbox.Text == "")
            {
                emp = 2;
                fnerr.Visible = true;
                fnerr.Text = "Firt Name Required";
            }

            if (pbox.Text == "")
            {
                emp = 3;
                perr.Visible = true;
                perr.Text = "Password Required";
            }

            if (cpbox.Text == "")
            {
                emp = 4;
                cperr.Visible = true;
                cperr.Text = "Confirmation Password Required";
            }

            if (Calendar1.SelectedDate.ToString() == "")
            {
                emp = 5;
                doberr.Visible = true;
                doberr.Text = "Date of Birth Required";
            }
            if ((gender.SelectedValue == null))
            {
                emp = 6;
                doberr.Visible = true;
                doberr.Text = "Gender Required";
            }

            if (pbox.Text == cpbox.Text)
            {
                se = false;
            }
            else
            {
                se = true;
                cperr.Text = "Should match the Password";
                cperr.Visible = true;
            }
            if (tncbox.Checked == true)
            {

                tnce = false;
            }
            else
            {
                tnce = true;
                tncerr.Text = "Agree the terms and conditions to proceed";
                tncerr.Visible = true;
            }
            if (validate.validateName(unbox.Text) == true)
            {

                une = false;
            }
            else
            {
                une = true;
                unerr.Text = "UserName must be one word";
                unerr.Visible = true;
            }

            if (validate.validateName(fnbox.Text) == true)
            {

                fne = false;
            }
            else
            {
                fne = true;
                fnerr.Text = "first name must be one word";
                fnerr.Visible = true;
            }

            if (validate.validateName(lnbox.Text) == true)
            {

                lne = false;
            }
            else
            {
                lne = true;
                lnerr.Text = "last name must be one word";
                lnerr.Visible = true;
            }

            if (validate.validatePass(pbox.Text) == true)
            {

                pe = false;
            }
            else
            {
                pe = true;
                perr.Text = "requires one lower case letter, one upper case letter, one digit, 6-13 length";
                perr.Visible = true;
            }
            if (validate.validateEmail(ebox.Text) == true)
            {

                ee = false;
            }
            else
            {
                ee = true;
                eerr.Text = "incorrect email";
                eerr.Visible = true;
            }
            if (validate.validateDate(Calendar1.SelectedDate) == true)
            {

                dobe = false;
            }
            else
            {
                dobe = true;
                doberr.Text = "You are too young to be online";
                doberr.Visible = true;
            }
            if (emp == 0 && une == false && se == false && fne == false && lne == false && pe == false && cpe == false && ee == false && dobe == false && tnce == false)
            {
                active = new Account(unbox.Text, fnbox.Text, lnbox.Text, ebox.Text, pbox.Text, gender.SelectedValue.ToString(), Calendar1.SelectedDate);
                if (Helper.submitForm(active) == true)
                {
                    Session["User"] = unbox.Text;
                    Response.Redirect("~/View/Dashboard.aspx");
                    Session.RemoveAll();
                }
            }
        }

    }
}