using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MSD
{
    public partial class UserProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string userIdstr = Request.QueryString["userId"];
                if (userIdstr != null)
                {

                    DataBase db = new DataBase();

                    int userId = int.Parse(userIdstr.ToString());
                    //string fullName = db.GetEventOwnerName(userId);

                    List<EventUser> lastEvent = db.GetListEventOfUserId(userId);
                    GridView1.DataSource = lastEvent;
                    GridView1.DataBind();
                    //RidesTextBox.Text = lastEvent.ToString();

                }
            }
        }
        protected void get_Username()
        {
          //  DataBase db = new DataBase();
         //   get_UsernameLable.Text = "hello " + db.getUser();

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }
    }
}