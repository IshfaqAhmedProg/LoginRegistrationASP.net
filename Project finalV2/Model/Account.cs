using Project_finalV2.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_finalV2.Model
{
    public class Account
    {
        private string username, firstname, lastname, email, password, gender;

        PasswordCrypt crypt = new PasswordCrypt();
        DateTime dob;

       
        public Account(string un, string fn, string ln, string e, string p, string g, DateTime dob)
        {
            this.username = un;
            this.firstname = fn;
            this.lastname = ln;
            this.email = e;
            this.password = crypt.EncryptPassword(p);
            this.gender = g;
            this.dob = dob;
        }
        public DateTime Dob
        {
            get { return dob; }
            set { dob = value; }
        }
        public string Password
        {
            get { return password; }
            set { password = value; }
        }
        public string Gender
        {
            get { return gender; }
            set { gender = value; }
        }

        public string Email
        {
            get { return email; }
            set { email = value; }
        }

        public string Lastname
        {
            get { return lastname; }
            set { lastname = value; }
        }

        public string Firstname
        {
            get { return firstname; }
            set { firstname = value; }
        }

        public string Username
        {
            get { return username; }
            set { username = value; }
        }
 
    }
}