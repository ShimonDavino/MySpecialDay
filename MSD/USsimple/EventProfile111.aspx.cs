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
        protected void Page_Load1(object sender, EventArgs e)
        {
            string user;
            if (!IsPostBack) //טעינת דף חדש
            {
                user = Request.QueryString["user"]; //לקיחת ערך הפרמטר user משורת הכתובת
                if (user != null)
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
    }
}