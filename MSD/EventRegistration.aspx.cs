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
            
        }

        protected void RegiaterUserToEvent_Click(object sender, EventArgs e)
        {
            string userId = Request.QueryString["UserId"]; // userId from table after register page
            int UserId = int.Parse(userId.ToString());
            Random random = new Random();
            int randEventId = random.Next(0, 5000);
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

        public DataRow objRow { get; set; }
    }

}
