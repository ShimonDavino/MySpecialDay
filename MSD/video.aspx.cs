using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using System.Web.HttpRequest.Files;

namespace MSD
{
    public partial class video : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string eventId = Request.QueryString["eventId"];
                if (eventId != null)
                {
                    if (Application[eventId] == null)
                    {
                    
                      
                        msgLabel.Text = "שגיאה בטעינת הדף אירוע לא קיים";
                    }
                    else
                        eventNameLiteral.Text = "לאירוע של " + ((Event)Application[eventId]).EventString;
                }
                else
                {
                   
               
                    msgLabel.Text = "שגיאה בטעינת הדף אירוע לא קיים";

                }
            }
            else
            {

            }
        }

       

        protected void Button1_Click(object sender, EventArgs e) // local upload good
        {
            if ((fileuploadExcel.PostedFile != null) && (fileuploadExcel.PostedFile.ContentLength > 0))
            {
                string fn = System.IO.Path.GetFileName(fileuploadExcel.PostedFile.FileName);
                string SaveLocation = Server.MapPath("Data") + "\\" + fn;
                try
                {
                    fileuploadExcel.PostedFile.SaveAs(SaveLocation);
                    Response.Write("The file has been uploaded.");
                }
                catch (Exception ex)
                {
                    Response.Write("Error: " + ex.Message);
                    //Note: Exception.Message returns detailed message that describes the current exception.
                    //For security reasons, we do not recommend you return Exception.Message to end users in
                    //production environments. It would be better just to put a generic error message.
                }
            }
            else
            {
                Response.Write("Please select a file to upload.");
            }
        } //Button1_Click

    }
}