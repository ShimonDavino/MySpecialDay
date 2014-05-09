using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using MSD.Models;

namespace MSD.Account
{
    public partial class Register : Page
    {
        public string UserName { get; set; }
        public int UserPassword { get; set; }
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            DataBase db = new DataBase();
            bool isFree = db.CheckIfUserIsFree(UserNameTextBox.Text, int.Parse(PasswordTextBox.Text));
            if (!isFree)
            {
                db.RegisterUser(UserNameTextBox.Text, int.Parse(PasswordTextBox.Text));

                if (db.SuccessLogin)
                {
                    // עבור לדף הבא
                    Response.Redirect("~/EventRegistration");
                }
                else
                {
                    // הודעת שגיאה
                    RegisterError.Text = "אחד מהפרטים שגוי";
                }
            }
            else
                RegisterError.Text = "שם המשתמש שבחרת כבר תפוס, בחר שם משתמש אחר !";
        }

  


        //protected void CreateUser_Click(object sender, EventArgs e)
        //{
        //    var manager = new UserManager();
        //    var user = new ApplicationUser() { UserName = UserName.Text };
        //    IdentityResult result = manager.Create(user, Password.Text);
        //    if (result.Succeeded)
        //    {
        //        IdentityHelper.SignIn(manager, user, isPersistent: false);
        //        IdentityHelper.RedirectToReturnUrl(Request.QueryString["UserProfile.aspx"], Response);
            
        //    }
        //    else 
        //    {
        //        ErrorMessage.Text = result.Errors.FirstOrDefault();
        //    }
        //}
       
    }
}