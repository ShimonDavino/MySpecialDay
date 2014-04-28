<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="main111.aspx.cs" Inherits="MSD.main111" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>My Special Day</h1>
        <p class="lead">ברוכים הבאים לאתר הפרוייקט שלנו</p>
      <img id="MainContent_imgLogo" title="My Special Day logo" src="https://camo.githubusercontent.com/911d1197f72b9da5aa7573d55df28eb53af9c197/687474703a2f2f69313337342e70686f746f6275636b65742e636f6d2f616c62756d732f61673431342f617373616662742f4d6f62696c6525323055706c6f6164732f4d592532305350454349414c2532304441592532306c6f676f2d315f7a7073767a7161303377792e6a7067" alt="My Special Day" /></p>
        <a class="btn btn-default" href="https://github.com/ShimonDavino/MySpecialDay/wiki">Our WiKi Page &raquo;</a>
       
    </div>

    <div class="row"> 
        <div class="col-md-4">
            <h2> כמה מילים על הפרוייקט</h2>
            <p>
            הרעיון של הפרוייקט שלנו הוא לפשט ולהקל את ארגון האירוע הן לבעלי האירוע והן למוזמנים מצד אחד. מצד שני לייצר מתנות ומזכרות יפות ושימושיות  לבעלי האירוע  לאחר סיום האירוע. </p>
            
            </p>

            <p>                
                <p>קישור לקבצי הפרוייקט שלנו </p>
                <a href="https://github.com/ShimonDavino/MySpecialDay" class="btn btn-primary btn-large">GitHub &raquo;</a></p>
            </p>
        </div>
        <div class="col-md-4">
            <h2>מי אנחנו?</h2>
            <p>
                 <a href="https://github.com/assafbt">Assaf Biton</a></br>
                 <a href="https://github.com/leacohen">Lea Cohen Sabba</a></br>
                 <a href="https://github.com/ShimonDavino">Shimon Davino</a></br>
                 <a href="https://github.com/shaul58">Shaul Vachnun</a></br>
                 <a href="https://github.com/israelrania">Israel Rania</a></br>
            </p>
        </div>
   <div class="col-md-4">
            <h2>על הקורס</h2>
            <p>
                
                הפרוייקט הוא חלק מקורס הנלמד במכללה האקדמית להנדסה בירושלים (JCE) </p>
            <a href="https://github.com/jce-il/se-class/wiki" class="btn btn-primary btn-large">Link &raquo;</a></p>
                                
            </p>
            <p>
                <a href="Account/Register.aspx">רישום - משתמש</a></br>
                <a href="UserProfile.aspx">פרופיל משתמש</a></br> 
                <a href="EventProfile.aspx">עמוד אירוע</a></br>
                <a href="EventRegistration.aspx">רישום - אירוע</a></br>
                          

            </p>
            
        </div>
    </div>
       
</asp:Content>
