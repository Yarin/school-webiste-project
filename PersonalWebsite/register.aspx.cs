using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PersonalWebsite
{
    public partial class register : System.Web.UI.Page
    {
        public Random rnd = new Random();
        public int code = 0;
        public DataSet ds;
        public Dal dal = new Dal();
        public bool IsNewAccount(string email)
        {
            string strSql = "select * from Users";
            ds = dal.GetDataSetWithSql(strSql);
            foreach (DataRow row in ds.Tables[0].Rows)
            {
                if (row["email"].ToString().StartsWith(email))
                {
                    return false;
                }
            }
            return true;
        }

        public string GetLastName(string[] fullName)
        {
            string lname = "";
            for (int i = 1; i < fullName.Length; i++)
            {
                lname += fullName[i] + " ";
            }
            return lname;
        }
            public void sendVerificationCode(string cmd, string args) 
        {     
            ProcessStartInfo start = new ProcessStartInfo();
            start.FileName = @"C:\Users\Yarin\AppData\Local\Programs\Python\Python37\python.exe";
            start.Arguments = string.Format("{0} {1}", cmd, args);
            start.UseShellExecute = false;
            start.RedirectStandardOutput = true;
            using (Process process = Process.Start(start))
            {
                using (StreamReader reader = process.StandardOutput)
                {
                    string result = reader.ReadToEnd();
                    Console.Write(result);
                }
            }
            //code = 1;
            
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            code = rnd.Next(10000, 100000);
            string filePath = @"C:\Users\Yarin\source\repos\PersonalWebsite\PersonalWebsite\main.py";
            //sendVerificationCode(filePath, $"yarinm0206@gmail.com {code}");
            if(this.IsPostBack)
            {
                if(this.IsNewAccount(Request.Form["mail"]))
                {
                    Session["code"] = code;
                    Session["mail"] = Request.Form["mail"];
                    Session["name"] = Request.Form["name"];
                    System.Diagnostics.Debug.WriteLine(Request.Form["mail"].ToString());
                    System.Diagnostics.Debug.WriteLine(Request.Form["name"].ToString());
                    System.Diagnostics.Debug.WriteLine(Session["code"]);
                    sendVerificationCode(filePath, $"{Request.Form["mail"]} {code}");
                    //HttpContext.Current.Response.Headers.Add("code", code.ToString());
                    Response.Redirect("verify.aspx");
                }
                else
                {
                    System.Diagnostics.Debug.WriteLine("This email is already registered you dumb fuck");
                    Response.Redirect("home.aspx");
                }
                
            }

        }
    }
}