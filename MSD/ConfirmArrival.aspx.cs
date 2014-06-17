using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace MSD
{
    public partial class ConfirmArrival : System.Web.UI.Page
    {
        DataBase db;
        bool success = true;
        int EventId = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                db = new DataBase();
                string eventId = Request.QueryString["EventId"]; // userId from table after register page
                int EventId = int.Parse(eventId.ToString());
                string fullName = db.GetEventOwnerName(EventId);
                EventOwnerNameLable.Text = fullName;

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

        protected void ConfirmArrivalButton_Click(object sender, EventArgs e)
        {
            string eventId = Request.QueryString["EventId"]; // userId from table after register page
            EventId = int.Parse(eventId.ToString());
            DataBase db = new DataBase();
            int temp;
            if (int.TryParse(HowMatchCommingTextBox.Text, out temp))
            {
                if (temp >= 0 && temp <= 100) { }
            }
            else
            {
                msgLabel.Text = "הכנס מספרים בלבד בשדה כמות אנשים !";
                success = false;
            }

            if(success)
            {
                bool insert = db.InsertInviteToTable(EventId,PrivateNameTextBox.Text,PartnerNameTextBox.Text,
                    FamilyTextBox.Text,int.Parse(HowMatchCommingTextBox.Text));
                if (!insert)
                    msgLabel.Text = "הנתונים לא הוכנסו בהצלחה - פנה לצוות האתר";
                else
                    Response.Redirect("ConfirmArrival?EventId=" + EventId);
            }
        }


        protected bool checkAuthentication()
        {
            if (Session["user"] != null)
                if (Session[Session["user"].ToString()] != null)
                    if (Session[Session["user"].ToString()].ToString() == "TRUE")
                        return true;
            return false;
        }
		

        protected void ViewInvitesButton_Click(object sender, EventArgs e)
        {
            ViewInvitesListBox.Focus();
            List<string> AllInvites;
            //int UserId=0;
            db = new DataBase();
            if(true) //db.IsOwnerEvent(UserId)
            {
                ViewInvitesLabel.Visible = true;
                ViewInvitesTextBox.Visible = true;
                ViewInvitesListBox.Visible = true;
                ViewInvitesListBox.Items.Clear();
                AllInvites = db.GetAllInvites();

                foreach (string item in AllInvites)
                {
                    ViewInvitesListBox.Items.Add(item);
                }
                //ViewInvitesListBox.Items.AddRange(db.GetAllInvites().ToArray());
                
                peopleCountTextBox.Text = db.GetPeopleCount();
                FamilyCountTextBox.Text = db.GetFamilyCount();
                
            }
            else
            {

            }
        }

        protected void ViewInvitesTextBox_TextChanged(object sender, EventArgs e)
        {
           
          
           string lattersCheck = ViewInvitesTextBox.Text;
           foreach (Char curChar in lattersCheck)
           {
               if (!Char.IsLetter(curChar))
               {
                   string display = "הכנס אותיות בלבד !";
                   ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);
                   ViewInvitesTextBox.Text = "";
               }

               else
               {
                   if (ViewInvitesTextBox.Text.Length != 0)
                   {
                       List<string> allInvites;
                       ViewInvitesListBox.Items.Clear();
                       allInvites = db.findInvites(ViewInvitesTextBox.Text);
                       foreach (string item in allInvites)
                       {
                           ViewInvitesListBox.Items.Add(item);
                       }
                   }
                   else
                   {
                       string display2 = "הכנס ערך לחיפוש !";
                       ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display2 + "');", true);
                   }

               }
           }
        }


        
    }
}