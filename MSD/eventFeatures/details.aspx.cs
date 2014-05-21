using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MSD.eventFeatures
{
    public partial class details : System.Web.UI.Page
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

                        msgLabel.Text = "שגיאה בטעינת הדף אירוע לא קיים";
                    }
                    else
                        eventNameLiteral.Text = "לאירוע של " + ((Event)Application[eventId]).EventString;
                }
                else
                {

                    msgLabel.Text = "שגיאה בטעינת הדף אירוע לא קיים";

                }
            }
            else
            {

            }
        } // Page_Load

        protected void AddDetailsButton_Click(object sender, EventArgs e)
        {
            if (FromTextBox.Text != "")
            {
                if (ContentTextBox.Text != "")
                {
                    string eventId = Request.QueryString["eventId"];
                    ((Event)Application[eventId]).addMessage(FromTextBox.Text.ToString() + ": " + ContentTextBox.Text.ToString());
                    MessagesTextBox.Text = ((Event)Application[eventId]).Messages;
                    FromTextBox.Text = "";
                    ContentTextBox.Text = "";
                }
                else
                {
                    msgLabel.Text = "השדה ריק";
                }
            }
            else
            {
                msgLabel.Text = "השדה ריק";
            }
        }


    }
}