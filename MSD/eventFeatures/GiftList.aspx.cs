using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MSD
{
    public partial class GiftList : System.Web.UI.Page
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
                        GiftNameTextBox.Enabled = false;
                        AddGiftButton.Enabled = false;
                        GiftGridView.Enabled = false;
                        msgLabel.Text = "שגיאה בטעינת הדף אירוע לא קיים";
                    }
                    else 
                    {
                        eventNameLiteral.Text = "לאירוע של " + ((Event)Application[eventId]).EventString;
                        GiftGridView.DataSource = ((Event)Application[eventId]).GiftsList;
                        GiftGridView.DataBind();
                        backProfilePageLink.HRef = "~/EventProfile.aspx?eventId=" + eventId;
                    }
                        
                }
                else
                {
                    AmountTextBox.Enabled = false;
                    GiftNameTextBox.Enabled = false;
                    AddGiftButton.Enabled = false;
                    GiftGridView.Enabled = false;
                    msgLabel.Text = "שגיאה בטעינת הדף אירוע לא קיים";

                }
            }
            else
            {

            }
        }

        protected void AddGiftButton_Click(object sender, EventArgs e)
        {
            if (GiftNameTextBox.Text != "")
            {
                int amount;
                if (Int32.TryParse(AmountTextBox.Text.ToString(), out amount))
                {
                    string eventId = Request.QueryString["eventId"];
                    ((Event)Application[eventId]).addGift(GiftNameTextBox.Text.ToString(), amount);
                    GiftNameTextBox.Text = "";
                    AmountTextBox.Text = "";
                    GiftGridView.DataSource = ((Event)Application[eventId]).GiftsList;
                    GiftGridView.DataBind();
                }
                else
                {
                    msgLabel.Text = "השדה כמות רצויה חייב להיות מספר";
                }
            }
            else
            {
                msgLabel.Text = "השדה תיאור מתנה ריק";
            }
        }


    }
}