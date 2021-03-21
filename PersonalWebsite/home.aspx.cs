using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PersonalWebsite
{
    public partial class home : System.Web.UI.Page
    {
        public string[] greetings = { "Hey!", "Hey there!", "Hello!", "What's up?", "How you doin?", "Hi...", "Shalom!" };
        Random rnd = new Random();
        public int index;
        public string greeting;
        protected void Page_Load(object sender, EventArgs e)
        {
            index = rnd.Next(greetings.Length);
            greeting = greetings[index];
    }
    }
}