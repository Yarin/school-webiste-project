using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PersonalWebsite
{
    public partial class verify : System.Web.UI.Page
    {
        public string code;
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
        protected void Page_Load(object sender, EventArgs e)
        {
            if(this.IsPostBack)
            {

                System.Diagnostics.Debug.WriteLine("clicked button");
                if(Request.Form["code"] == Session["code"].ToString())
                {
                    System.Diagnostics.Debug.WriteLine("code is correct!");
                    if(this.IsNewAccount(Session["mail"].ToString()))
                    {
                        string[] fullName = Session["name"].ToString().Split(' ');
                        string fname = fullName[0];
                        string lname = this.GetLastName(fullName);
                        string email = Session["mail"].ToString();
                        System.Diagnostics.Debug.WriteLine($"first name is {fname}");
                        System.Diagnostics.Debug.WriteLine($"last name is {lname}");
                        dal.insert(fname, lname, email);
                        System.Diagnostics.Debug.WriteLine($"I inserted {email} with fname {fname} and lname {lname}");
                        Response.Redirect("home.aspx");

                    }
                }
            }
            
            //code = int.Parse(HttpContext.Current.Request.Headers["code"]);

            
        }
    }
}