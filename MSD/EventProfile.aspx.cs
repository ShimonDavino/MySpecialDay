using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MSD
{
    public partial class EventProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*string EventUserString;
            EventUserString = Request.QueryString["eventOf"];
            EventOfNames.Text = EventUserString;
             */
          
            if (!IsPostBack) //טעינת דף חדש
            {
                string eventId = Request.QueryString["eventId"]; //לקיחת ערך הפרמטר user משורת הכתובת
                if (eventId != null)
                {
                    if (Application[eventId] == null)
                    {
                        rsvpButton.Enabled = false;
                        shuttlesButton.Enabled = false;
                        giftButton.Enabled = false;
                        messageButton.Enabled = false;
                   //     videoButton.Enabled = false;
                   //     blessingButton.Enabled = false;
                        EventOfNames.Text = "שגיאה בטעינת הדף אירוע לא קיים";
                    }
                    else
                    {
                        EventOfNames.Text = "האירוע של " + ((Event)Application[eventId]).EventString;
                        // בדיקה אם היוזר קיים ושינוי הכותרת קטע זמני עד שיהיה לנו את מסד הנתוני ואז נטען פרטים משם
                    }

                }
                else
                {
                    rsvpButton.Enabled = false;
                    shuttlesButton.Enabled = false;
                    giftButton.Enabled = false;
                    messageButton.Enabled = false;
                  //  videoButton.Enabled = false;
                  //  blessingButton.Enabled = false;
                    EventOfNames.Text = "שגיאה בטעינת הדף אירוע לא קיים";
                }
            }
            else
            {

            }
        } // Page_Load

        protected void rsvpButton_Click(object sender, EventArgs e)
        {
            try
            {
                string eventId = Request.QueryString["eventId"];
                Page.Response.Redirect("~/eventFeatures/Rsvp.aspx?eventId=" + eventId);
            }
            catch (Exception ex)
            {
                Exception E = ex;
            }
        } // rsvpButton_Click

        protected void giftButton_Click(object sender, EventArgs e)
        {
            try
            {
                string eventId = Request.QueryString["eventId"];
                Page.Response.Redirect("~/eventFeatures/GiftList.aspx?eventId=" + eventId);
            }
            catch (Exception ex)
            {
                Exception E = ex;
            }
        } // giftButton_Click

        protected void blessingButton_Click(object sender, EventArgs e)
        {
            try
            {
                string eventId = Request.QueryString["eventId"];
                Page.Response.Redirect("~/eventFeatures/blessing.aspx?eventId=" + eventId);
            }
            catch (Exception ex)
            {
                Exception E = ex;
            }
        } // giftButton_Click

        protected void videoButton_Click(object sender, EventArgs e)
        {
            try
            {
                string eventId = Request.QueryString["eventId"];
                Page.Response.Redirect("~/eventFeatures/video.aspx?eventId=" + eventId);
            }
            catch (Exception ex)
            {
                Exception E = ex;
            }
        }

        protected void messageButton_Click(object sender, EventArgs e)
        {
            try
            {
                string eventId = Request.QueryString["eventId"];
                Page.Response.Redirect("~/eventFeatures/Messages.aspx?eventId=" + eventId);
            }
            catch (Exception ex)
            {
                Exception E = ex;
            }
        }

        protected void shuttlesButton_Click(object sender, EventArgs e)
        {
            try
            {
                string eventId = Request.QueryString["eventId"];
                Page.Response.Redirect("~/eventFeatures/Rides.aspx?eventId=" + eventId);
            }
            catch (Exception ex)
            {
                Exception E = ex;
            }
        } 


    }
}