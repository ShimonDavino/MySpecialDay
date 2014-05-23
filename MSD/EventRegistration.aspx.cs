using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MSD
{
    public partial class EventRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RegiaterUserToEvent_Click(object sender, EventArgs e)
        {
            int UserId = 0; // userId from table after register page
            int eventId = 6666;
            //DateTime EventDateConvert = DateTime.Parse(EventDateTextBox.Text);
            //string formatted = EventDateConvert.ToString("MM-dd-yyyy");
            //DateTime date = DateTime.Parse(formatted);
            //DateTime EventDateConvert = DateTime.ParseExact(EventDateTextBox.Text, "MM/dd/yyyy", null);
            //DateTime dt = DateTime.Parse(EventDateTextBox.Text, CultureInfo.GetCultureInfo("en-gb"));
            //DateTime dt = GetDate(EventDateTextBox.Text);
            DataBase db = new DataBase();
            db.RegisterUserToNewEvent(UserId, eventId, EventTypeDropDownList.SelectedValue,
                EventOwnerNameTextBox.Text, PartnerNameTextBox.Text, Family_1EventOwnerTextBox.Text,
                FamilyPartnerNameTextBox.Text, EventDateTextBox.Text, EventPlaceTextBox.Text, EventAddressTextBox.Text,
                PhoneOf_EventOwnerTextBox.Text, "חשמונאים", PhoneOf_EventPlaceTextBox.Text);
        }

        //private DateTime GetDate(string dateToConvert)
        //{

        //    int Year = Convert.ToInt32(dateToConvert.Split('/')[2]);
        //    int Month = Convert.ToInt32(dateToConvert.Split('/')[1]);
        //    int Day = Convert.ToInt32(dateToConvert.Split('/')[0]);
        //    DateTime dt = new DateTime();
        //    return dt.Date;
        //}

        //protected void EventDateCalendar_SelectionChanged(object sender, EventArgs e)
        //{
        //    //EventDateTextBox.Text = EventDateCalendar.SelectedDate.ToShortDateString();
        //}

        //protected void CalendarImageButton_Click(object sender, ImageClickEventArgs e)
        //{
        //    //EventDateCalendar.Visible = true;
        //}
    }

}
