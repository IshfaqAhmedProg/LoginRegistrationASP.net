using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text.RegularExpressions;

namespace Project_finalV2.Controller
{
    public class Validation
    {
        public Validation()
        {
        }
        internal bool validateName(string x)
        {
            Regex regex = new Regex(@"^\b[a-zA-Z0-9_]+\b$");
            Match match = regex.Match(x);
            if (match.Success)
            {
                return true;
            }
            else
            {
                return false;
            }

        }
        internal bool validatePass(string x)
        {
            Regex regex = new Regex(@"^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s).{4,8}$");
            Match match = regex.Match(x);
            if (match.Success)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        internal bool validateEmail(string x)
        {
            Regex regex = new Regex(@"^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$");
            Match match = regex.Match(x);
            if (match.Success)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        internal bool validateDate(DateTime x)
        {
            DateTime bar = new DateTime(2017, 12, 31, 0, 0, 0);
            int result = DateTime.Compare(bar, x);
            if (result < 0)
            {
                return false;
            }
            else
            {
                return true;
            }

        }
    }
}