<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="MSD.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Your application description page.</h3>
    <p>Use this area to provide additional information.</p>
   <div class="row">
     <div class="col-lg-4">
          <img class="img-circle" data-src="Content/images/lake%20taupo%20NZ.JPG" alt="Generic placeholder image">
        
          <h2>Heading</h2>
          <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>
          <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div><!-- /.col-lg-4 -->

    <div class="row"> 
       
        <div dir="rtl" class="col-md-4">
            <h2>על הקורס</h2>
            <p>
                
                הפרוייקט הוא חלק מקורס הנלמד במכללה האקדמית להנדסה בירושלים (JCE) </p>
            <a href="https://github.com/jce-il/se-class/wiki" class="btn btn-primary btn-large">Link &raquo;</a></p>
                                
            </p>
            <p>
                 
                          

            </p>
            
        </div>
        <div dir="rtl" class="col-md-4">
            <h2>מי אנחנו?</h2>
            <p>
                
                 <a href="https://github.com/assafbt">Assaf Biton</a></br>
                 <a href="https://github.com/leacohen">Lea Cohen Sabba</a></br>
                 <a href="https://github.com/ShimonDavino">Shimon Davino</a></br>
                 <a href="https://github.com/shaul58">Shaul Vachnun</a></br>
                 <a href="https://github.com/israelrania">Israel Rania</a></br>
            </p>
        </div>
   

         <div dir="rtl" class="col-md-4">
            <h2> כמה מילים על הפרוייקט</h2>
            <p>
            הרעיון של הפרוייקט שלנו הוא לפשט ולהקל את ארגון האירוע הן לבעלי האירוע והן למוזמנים מצד אחד. מצד שני לייצר מתנות ומזכרות יפות ושימושיות  לבעלי האירוע  לאחר סיום האירוע. </p>
            
            </p>

            <p>                
                <p>קישור לקבצי הפרוייקט שלנו </p>
                <a href="https://github.com/ShimonDavino/MySpecialDay" class="btn btn-primary btn-large">GitHub &raquo;</a></p>
            </p>
        </div>
    </div>

</asp:Content>
