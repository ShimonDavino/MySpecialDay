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
            if (!IsPostBack) //טעינת דף חדש
            {
                Event eventId = Request.QueryString["event"]; //לקיחת ערך הפרמטר user משורת הכתובת
                if (eventId != null)
                {
                    // בדיקה אם היוזר קיים ושינוי הכותרת קטע זמני עד שיהיה לנו את מסד הנתוני ואז נטען פרטים משם
                    if (user.Equals("1111"))
                    {
                        lblEventUser.Text = "ברוך הבא לדף האירוע של שלומי ושלומית";
                        //אפשרות לשנות את התמונה בהתאם לאירוע הקיים
                        //imgEvent.ImageUrl = "כתובת התמונה";
                    }
                    else if (user.Equals("1112"))
                    {
                        lblEventUser.Text = "ברוך הבא לדף האירוע של איציק";
                        //imgEvent.ImageUrl = "כתובת התמונה";  
                   }
                }
            }
            else
            {

            }
        }

        protected void ButtonConfirm_Click(object sender, EventArgs e)
        {

        }
    }
}