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
            DataBase db = new DataBase();
            string eventId = Request.QueryString["EventId"]; // userId from table after register page
            int EventId = int.Parse(eventId.ToString());
            string fullName = db.GetEventOwnerName(EventId);
            EventOwnerNameLable.Text = fullName;
        }
        
        protected void confirmArrivalImageButton_Click(object sender, ImageClickEventArgs e)
        {
            string eventId = Request.QueryString["EventId"]; // userId from table after register page
            int EventId = int.Parse(eventId.ToString());
            Response.Redirect("ConfirmArrival?EventId="+EventId);
            
        }

    }
}