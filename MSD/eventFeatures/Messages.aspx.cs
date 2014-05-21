using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MSD
{
    public partial class Messages : System.Web.UI.Page
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
                        MessagesTextBox.Text = ((Event)Application[eventId]).Messages;
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



      

    }
}