using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_finalV2.Controller
{
    public class PasswordCrypt
    {
        public string EncryptPassword(string pass)
        {
            byte[] bytes = System.Text.Encoding.Unicode.GetBytes(pass);
            string epass = Convert.ToBase64String(bytes);
            return epass;
        }
        public string DecryptPassword(string epass)
        {
            byte[] bytes = Convert.FromBase64String(epass);
            string pass = System.Text.Encoding.Unicode.GetString(bytes);
            return pass;
        }
    }
}