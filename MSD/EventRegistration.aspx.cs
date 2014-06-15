using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace MSD
{
    public partial class EventRegistration : System.Web.UI.Page
    {
        //public string EventType_db { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    EventDateCalendar.SelectedDate = DateTime.Now;
            //    if (checkAuthentication())
            //    {
            //        RegiaterUserToEvent.Enabled = true;

            //    }
            //    else 
            //    {
            //        RegiaterUserToEvent.Enabled = false;
            //    }
            //}
        }

        //protected void exitButton_Click(object sender, EventArgs e)
        //{
        //    Session[Session["user"].ToString()] = null;
        //    Session["user"] = null;
        //    Session["userId"] = null;
        //    Response.Redirect(Request.RawUrl);
        //}



        protected bool checkAuthentication()
        {
            if (Session["user"] != null)
                if (Session[Session["user"].ToString()] != null)
                    if (Session[Session["user"].ToString()].ToString() == "TRUE")
                        return true;
            return false;
        }

        protected void RegiaterUserToEvent_Click(object sender, EventArgs e)
        {

            
            string userId = Session["userId"].ToString(); // userId from table after register page
            int UserId = int.Parse(userId.ToString());
            Random random = new Random();
            int randEventId;
            do
            {
                randEventId = random.Next(0, 5000);

            } while (Application[randEventId.ToString()] != null);
            //CultureInfo obj = new CultureInfo("en-CA");
            DateTime dt1 = DateTime.Parse(datepicker.Text);
            string datepickerParsed = dt1.ToString("MM-dd-yyyy");
            //DateTime dt2 = Convert.ToDateTime(date);
            //dt = DateTime.Parse(datepicker.Text);


            DataBase db = new DataBase();
            db.RegisterUserToNewEvent(UserId, randEventId, EventTypeDropDownList.SelectedItem.Value,
                EventOwnerNameTextBox.Text, PartnerNameTextBox.Text, Family_1EventOwnerTextBox.Text,
                FamilyPartnerNameTextBox.Text, datepickerParsed, EventPlaceTextBox.Text, EventAddressTextBox.Text,
                PhoneOf_EventOwnerTextBox.Text, PhoneOf_EventPlaceTextBox.Text);
            Event newEvent = new Event(randEventId, EventTypeDropDownList.SelectedItem.Value);
            Application[randEventId.ToString()] = newEvent;
            Response.Redirect("EventProfile?EventId=" + randEventId);

        }



        //private DateTime GetDate(string dateToConvert)
        //{

        //    int Year = Convert.ToInt32(dateToConvert.Split('/')[2]);
        //    int Month = Convert.ToInt32(dateToConvert.Split('/')[1]);
        //    int Day = Convert.ToInt32(dateToConvert.Split('/')[0]);
        //    DateTime dt = new DateTime();
        //    return dt.Date;
        //}


    }

}
