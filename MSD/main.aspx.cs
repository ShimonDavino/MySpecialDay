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
            if (Application["11111"] == null)
            {
                Event ExampleEvent = new Event(1111, "אירוע לדוגמא"); //אובייקט של האירוע לדוגמא
                Application["11111"] = ExampleEvent;
            }

            if (checkAuthentication())
            {
                enterLink.Visible = false;
                exitButton.Visible = true;
                registerLink.Text = "ברוך הבא " + Session["user"].ToString();
                registerLink.NavigateUrl = "UserProfile?userId=" + Session["userId"].ToString();

            }
            else
            {
                enterLink.Visible = true;
                exitButton.Visible = false;
                registerLink.Text = "רישום";
                registerLink.NavigateUrl = "~/Login";
            }

        }

        protected void exitButton_Click(object sender, EventArgs e)
        {
            Session[Session["user"].ToString()] = null;
            Session["user"] = null;
            Session["userId"] = null;
            Response.Redirect(Request.RawUrl);
        }



        protected bool checkAuthentication()
        {
            if (Session["user"] != null)
                if (Session[Session["user"].ToString()] != null)
                    if (Session[Session["user"].ToString()].ToString() == "TRUE")
                        return true;
            return false;
        }
    }
}