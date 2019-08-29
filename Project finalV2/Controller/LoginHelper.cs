using Project_finalV2.Controller;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_finalV2.Controller
{
    public class LoginHelper
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ToString());
        PasswordCrypt crypt;
        public LoginHelper()
        {
            crypt = new PasswordCrypt();
        }
        internal string userValid(string un)
        {
            conn.Open();
            String query = "select count(*) from accounts where username='" + un + "'";
            SqlCommand cmd = new SqlCommand(query, conn);
            string output = cmd.ExecuteScalar().ToString();
            return output;
        }
        internal string passValid(string un, string p)
        {
            string encp = crypt.EncryptPassword(p);
            conn.Open();
            String query = "select count(*) from accounts where username='" + un + "'and password='" + encp + "'";
            SqlCommand cmd = new SqlCommand(query, conn);
            String output2 = cmd.ExecuteScalar().ToString();
            return output2;
        }
    }
}