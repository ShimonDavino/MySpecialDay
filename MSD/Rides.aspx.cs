using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MSD
{
    public partial class Rides : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string eventId = Request.QueryString["eventId"];
                if (eventId != null)
                {
                    if (Application[eventId] == null)
                    {
                        FromTextBox.Enabled = false;
                        ContentTextBox.Enabled = false;
                        AddMessageButton.Enabled = false;
                        msgLabel.Text = "שגיאה בטעינת הדף אירוע לא קיים";
                    }
                    else 
                    {
                        eventNameLiteral.Text = "לאירוע של " + ((Event)Application[eventId]).EventString;
                        RidesTextBox.Text = ((Event)Application[eventId]).Rides;
                        backProfilePageLink.HRef = "~/EventProfile.aspx?eventId=" + eventId;
                    }
                        
                }
                else
                {
                    FromTextBox.Enabled = false;
                    ContentTextBox.Enabled = false;
                    AddMessageButton.Enabled = false;
                    msgLabel.Text = "שגיאה בטעינת הדף אירוע לא קיים";

                }
            }
            else
            {

            }
        }



        protected void AddMessageButton_Click(object sender, EventArgs e)
        {
            if (FromTextBox.Text != "")
            {
                if (ContentTextBox.Text !="")
                {
                    string eventId = Request.QueryString["eventId"];
                    ((Event)Application[eventId]).addRide(FromTextBox.Text.ToString() + ": " + ContentTextBox.Text.ToString());
                    RidesTextBox.Text = ((Event)Application[eventId]).Rides;
                    FromTextBox.Text = "";
                    ContentTextBox.Text = "";
                }
                else
                {
                    msgLabel.Text = "השדה מאת ריק";
                }
            }
            else
            {
                msgLabel.Text = "השדה תוכן ריק";
            }
        }


    }
}