﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PersonalWebsite
{
    public partial class verify : System.Web.UI.Page
    {
        public int code;
        protected void Page_Load(object sender, EventArgs e)
        {
            //code = int.Parse(HttpContext.Current.Request.Headers["code"]);

            
        }
    }
}