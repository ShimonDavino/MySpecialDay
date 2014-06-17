using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

namespace MSD
{
    public partial class blessing : System.Web.UI.Page
    {
        DataBase db;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                db = new DataBase();
                string eventId = Request.QueryString["EventId"]; // userId from table after register page
                int EventId = int.Parse(eventId.ToString());
                string fullName = db.GetEventOwnerName(EventId);
                EventOwnerNameLable.Text = fullName;

                
                if (eventId != null)
                {
                    if (Application[eventId] == null)
                    {

                        msgLabel.Text = "שגיאה בטעינת הדף אירוע לא קיים";
                    }
                    else
                    {
                        //  eventNameLiteral.Text = "לאירוע של " + ((Event)Application[eventId]).EventString;
                    }
                }
                else
                {
                    
                    msgLabel.Text = "שגיאה בטעינת הדף אירוע לא קיים";

                }
            }
            else
            {

            }
        } // Page_Load

        //protected void ConfirmButton_Click(object sender, EventArgs e)
        //{
        //    if (ConfirmNameTextBox.Text != "")
        //    {
        //        int amount;
        //        if (Int32.TryParse(AmountTextBox.Text.ToString(), out amount))
        //        {
        //            string eventId = Request.QueryString["eventId"];
        //            ((Event)Application[eventId]).AddInvite(ConfirmNameTextBox.Text.ToString(), amount);
        //            Page.Response.Redirect("EventProfile.aspx?eventId=" + eventId);
        //        }
        //        else
        //        {
        //            msgLabel.Text = "השדה כמות אנשים חייב להיות מספר";
        //        }
        //    }
        //    else
        //    {
        //        msgLabel.Text = "השדה שם מאשר ריק";
        //    }
        //} //ConfirmButton_Click

        //protected void Button1_Click(object sender, EventArgs e) // old
        //{
        //    if ((fileuploadExcel.PostedFile != null) && (fileuploadExcel.PostedFile.ContentLength > 0))
        //    {
        //        string fn = System.IO.Path.GetFileName(fileuploadExcel.PostedFile.FileName);
        //        string SaveLocation = Server.MapPath("Data") + "\\" + fn;
        //        try
        //        {
        //            fileuploadExcel.PostedFile.SaveAs(SaveLocation);
        //            Response.Write("The file has been uploaded.");
        //        }
        //        catch (Exception ex)
        //        {
        //            Response.Write("Error: " + ex.Message);
        //            //Note: Exception.Message returns detailed message that describes the current exception.
        //            //For security reasons, we do not recommend you return Exception.Message to end users in
        //            //production environments. It would be better just to put a generic error message.
        //        }
        //    }
        //    else
        //    {
        //        Response.Write("Please select a file to upload.");
        //    }
        //}//Button1_Click

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (FileUpload1.HasFile)
            {

                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Data/Blessing/") + FileUpload1.FileName);
            }

            DataTable dt = new DataTable(); // build the grid
            dt.Columns.Add("File", typeof(String));
            dt.Columns.Add("Size", typeof(String));
            dt.Columns.Add("Type", typeof(String));


            foreach (string strFile in Directory.GetFiles(Server.MapPath("~/Data/Blessing/")))
            {
                FileInfo fi = new FileInfo(strFile);

                dt.Rows.Add(fi.Name, fi.Length, getFileTypeByExtention(fi.Extension));

            }

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        private string getFileTypeByExtention (string extention)
        {
            switch (extention.ToLower())
            {

                case ".doc":
                case ".docx":
                    return "Microsoft Word Document";

                case ".jpg":
                case ".jpeg":
                    return "JPEG Image";
                case ".png":
                    return "PNG Image";
                case ".gif":
                    return "GIF Image";
                case ".pdf":
                    return "PDF Portable Document Format";


                default:
                    return "unkown Image";



            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        } 
    }
}