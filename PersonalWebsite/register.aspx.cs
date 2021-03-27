using System;
using System.Collections.Generic;
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
            code = 1;
            
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            code = rnd.Next(10000, 100000);
            string filePath = @"C:\Users\Yarin\source\repos\PersonalWebsite\PersonalWebsite\main.py";
            //sendVerificationCode(filePath, $"yarinm0206@gmail.com {code}");
            if(this.IsPostBack)
            {
                sendVerificationCode(filePath, $"{Request.Form["mail"]} {code}");
                HttpContext.Current.Response.Headers.Add("code", code.ToString());
                Response.Redirect("verify.aspx");
            }

        }
    }
}