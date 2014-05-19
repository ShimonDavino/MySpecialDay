using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MSD
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Application["1111"] == null)
            {
                Event ExampleEvent = new Event(1111, "אירוע לדוגמא"); //אובייקט של האירוע לדוגמא
                Application["1111"] = ExampleEvent;
            }
        }
    }
}