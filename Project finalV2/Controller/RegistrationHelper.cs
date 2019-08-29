using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using Project_finalV2.Model;

namespace Project_finalV2.Controller
{
    public class RegistrationHelper
    {
        SqlConnection myConnection;
        public RegistrationHelper()
        {
            myConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ToString());
        }
        internal bool submitForm(Account newuser)
        {
            try
            {
                myConnection.Open();
                String myQuery = "INSERT INTO accounts( [username],[firstname], [lastname], [password], [email], [dob], [gender] ) values ('"
                    + newuser.Username + "' ,'" + newuser.Firstname + "' ,'" + newuser.Lastname + "' ,'"
                    + newuser.Password + "', '" + newuser.Email + "' ,'" + newuser.Dob + "','" + newuser.Gender + "')";

                SqlCommand myCommand = new SqlCommand(myQuery, myConnection);
                myCommand.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                string excmssg = ex.ToString();
            }
            finally
            {
                myConnection.Close();
            }
            return true;
        }
    }
}