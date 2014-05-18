using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MSD
{
    public partial class Rsvp : System.Web.UI.Page
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
                        AmountTextBox.Enabled = false;
                        ConfirmNameTextBox.Enabled = false;
                        ConfirmButton.Enabled = false;
                        msgLabel.Text = "שגיאה בטעינת הדף אירוע לא קיים";
                    }
                    else
                        eventNameLiteral.Text = "לאירוע של "+((Event)Application[eventId]).EventString;
                }
                else
                {
                    AmountTextBox.Enabled = false;
                    ConfirmNameTextBox.Enabled = false;
                    ConfirmButton.Enabled = false;
                    msgLabel.Text = "שגיאה בטעינת הדף אירוע לא קיים";

                }
            }
            else
            {

            }
        } // Page_Load

        protected void ConfirmButton_Click(object sender, EventArgs e)
        {
            if (ConfirmNameTextBox.Text != "")
            {
                int amount;
                if(Int32.TryParse(AmountTextBox.Text.ToString(),out amount)){
                    string eventId =Request.QueryString["eventId"];
                    ((Event)Application[eventId]).AddInvite(ConfirmNameTextBox.Text.ToString(), amount);
                    Page.Response.Redirect("~/EventProfile.aspx?eventId="+ eventId);
                }
                else
                {
                    msgLabel.Text = "השדה כמות אנשים חייב להיות מספר";
                }
            }
            else
            {
                msgLabel.Text = "השדה שם מאשר ריק";
            }
        } // ConfirmButton_Click

    }
}