using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MSD
{
    public partial class eventProfile_shaul : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                string eventId = Request.QueryString["EventId"];
                if (eventId != null)
                {
                    if (eventId != "11111")
                    {
                        DataBase db = new DataBase();

                        int EventId = int.Parse(eventId.ToString());
                        string fullName = db.GetEventOwnerName(EventId);
                        EventOwnerNameLable.Text = fullName;
                    }
                    else
                    {
                        EventOwnerNameLable.Text = "אירוע לדוגמה";
                    }
                    Event tmpEvent = ((Event)Application[eventId]);
                    MessagesTextBox.Text = tmpEvent.Messages; // error when i tryed to open old event -> An exception of type 'System.NullReferenceException' occurred in MSD.dll but was not handled in user code
                    RidesTextBox.Text = tmpEvent.Rides;
                }
                //if (checkAuthentication())
                //{
                //    enterLink.Visible = false;
                //    exitButton.Visible = true;
                //    registerLink.Text = "ברוך הבא " + Session["user"].ToString();
                //    registerLink.NavigateUrl = "UserProfile?userId=" + Session["userId"].ToString();
                //}
                //else
                //{
                //    enterLink.Visible = true;
                //    exitButton.Visible = false;
                //    registerLink.Text = "רישום";
                //    registerLink.NavigateUrl = "~/Login";
                //}
            }

        }

        protected void confirmArrivalImageButton_Click(object sender, ImageClickEventArgs e)
        {
            string eventId = Request.QueryString["EventId"]; // userId from table after register page
            int EventId = int.Parse(eventId.ToString());
            Response.Redirect("ConfirmArrival?EventId=" + EventId);

        }

        protected void blessingImageButton_Click(object sender, ImageClickEventArgs e)
        {
            string eventId = Request.QueryString["EventId"]; // userId from table after register page
            int EventId = int.Parse(eventId.ToString());
            Response.Redirect("blessing?EventId=" + EventId);

        }

        protected void ridesImageButton_Click(object sender, ImageClickEventArgs e)
        {
            string eventId = Request.QueryString["EventId"]; // userId from table after register page
            int EventId = int.Parse(eventId.ToString());
            Response.Redirect("Rides?EventId=" + EventId);

        }



        protected void giftImageButton_Click(object sender, ImageClickEventArgs e)
        {
            string eventId = Request.QueryString["EventId"]; // userId from table after register page
            int EventId = int.Parse(eventId.ToString());
            Response.Redirect("GiftList?EventId=" + EventId);

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

        protected void AddMessageButton_Click(object sender, EventArgs e)
        {
            if (FromTextBox.Text != "")
            {
                if (ContentTextBox.Text != "")
                {
                    string eventId = Request.QueryString["EventId"];
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