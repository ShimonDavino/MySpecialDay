using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin.Security;
using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using MSD.Models;

namespace MSD.Account
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RegisterHyperLink.NavigateUrl = "Register";

            var returnUrl = HttpUtility.UrlEncode(Request.QueryString["~/UserProfile.aspx"]);
            if (!String.IsNullOrEmpty(returnUrl))
            {
                RegisterHyperLink.NavigateUrl += "?ReturnUrl=EventProfile.aspx" + returnUrl;
            }
        }

        protected void LogIn(object sender, EventArgs e)
        {
            msgLabel.Text = "שם משתמש או סיסמא אינם נכונים";
            DataBase db = new DataBase();
            db.CheckUser(UserNameTextBox.Text, PasswordTextBox.Text);
            string eventName = "?eventOf=shaul AND Avital Weeding";
            if (db.SuccessLogin)
            {
                // עבור לדף הבא
                Response.Redirect("EventProfile"+eventName);  //?eventOf=Shaul&Avital
            }
            else
            {
                // הודעת שגיאה
                //msgLabel.Text = "שם משתמש או סיסמא אינם נכונים";
            }
        }



        //protected void LogIn(object sender, EventArgs e)
        //{
        //    if (IsValid)
        //    {
        //        // Validate the user password
        //        var manager = new UserManager();
        //        ApplicationUser user = manager.Find(UserName.Text, Password.Text);
        //        if (user != null)
        //        {
        //    /* addition for iter1*/    
        //        if ((UserName.Text.Equals(1112)))
        //            {
        //                FailureText.Text = "good username.";
        //                ErrorMessage.Visible = true;
        //                if (Password.Text.Equals(123123))
        //                {
        //                    FailureText.Text = "wellcome.";
        //                    ErrorMessage.Visible = true;
        //                    RegisterHyperLink.NavigateUrl += "?ReturnUrl=EventProfile?user=" + UserName;
                         
        //                }
        //            }
        //        if ( (UserName.Text.Equals(1112)))
        //        {
        //            FailureText.Text = "good username.";
        //            ErrorMessage.Visible = true;
        //            if (Password.Text.Equals(123123))
        //            {
        //                FailureText.Text = "wellcome.";
        //                ErrorMessage.Visible = true;
        //                RegisterHyperLink.NavigateUrl += "?ReturnUrl=EventProfile?user=" + UserName;

        //            }
        //        }
        //    /*end addition for iter1*/    
                    
        //            IdentityHelper.SignIn(manager, user, RememberMe.Checked);
        //            IdentityHelper.RedirectToReturnUrl(Request.QueryString["~/UserProfile.aspx"], Response);
        //        }
        //        else
        //        {
                    
        //            FailureText.Text = "Invalid username or password.";
        //            ErrorMessage.Visible = true;
        //        }
        //    }
        //}

        
    }
}