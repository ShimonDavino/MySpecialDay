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

        }

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