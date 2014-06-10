<%@ Page Title="Home Page" Language="C#" MasterPageFile="" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="MSD._Default" %>

<%--<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">--%>
 
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<%-- <---------------- start of the headline --%>
<head runat="server">
    <title>יצירת משתמש</title>
        <!-- Jquery is requierd-->
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>

            <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css"/>

            <!-- Optional theme -->
        <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css"/>

            <!-- Latest compiled and minified JavaScript -->
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
            <!-- my css file -->
    <link href="../EventRegistration.css" rel="stylesheet" />
        

                 <link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css"/>
                <script src="//code.jquery.com/jquery-1.10.2.js"></script>
                <script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
                <link rel="stylesheet" href="/resources/demos/style.css"/>
                <script src="/jquery.ui.datepicker-he.js"></script>
              
     <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
     <meta charset="UTF-8"/>

</head>
<body>
    
    <form id="form1" dir="rtl" runat="server">
    <div class ="container">
      <nav class="navbar navbar-fixed-top navbar-inverse" role="navigation">                
      <div class="navbar-header">
       <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
        <span class="sr-only">Toggle navigation</span>
    </button>
   <a class="navbar-brand" href="#">לוגו הארגון</a>
   </div>                    
 </nav>
        </div>
        </form>
        
         <!-- My Nav Bar    ------------------------>
   <nav class="navbar navbar-default navbar-fixed-top navbar-inverse" role="navigation">
   <!-- Brand and toggle get grouped for better mobile display -->
   <div class="navbar-header">
   <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
   <%--<span class="sr-only">Toggle navigation</span>
    <span class="icon-bar"></span>
   <span class="icon-bar"></span>
    <span class="icon-bar"></span>--%>
   </button>
       <%--<img src="../Content/images/MY SPECIAL DAY logo small.jpg" alt="logo" height="50" width="50" />--%>
  </div>
          
          
 <!-- Collect the nav links, forms, and other content for toggling -->
  <div class="collapse navbar-collapse navbar-ex1-collapse ">
      
  <ul class="nav navbar-nav navbar-right  "  id="menu_items">
   <li class="active navbar-right"><a href="../main.aspx">My Special Day</a></li>
  <li class="navbar-right"><a href="../About.aspx">אודות</a></li>

 <%-- <li class="navbar-right"> <a href="ProductsForm.aspx">מוצרים</a></li>--%>
   <li class="navbar-right"><a href="../Contact.aspx">צרו קשר</a></li>
  <li  class="navbar-right">
  
  <%--<a href="#" class="dropdown-toggle " data-toggle="dropdown">עזרה <b class="caret"></b></a>
   <ul class="dropdown-menu ">
   <li ><a href="#">בלוג</a></li>
   <li ><a href="#">פורום</a></li>
  <li ><a href="#">שאלות ותשובות</a></li>
  <li ><a href="#">גירסה 1.0.1</a></li>
   </ul>--%>
            
   </li>
   </ul>
     <ul class="nav navbar-nav navbar-left" dir="rtl" id="menu_items">
      <li class="navbar-right"><a href="../Account/register.aspx">רישום</a></li>
      <li class="navbar-right"><a href="../Login.aspx">כניסה</a></li>
      </ul>
   
  </div><!-- /.navbar-collapse -->
       
      
  </nav> <!-- End of Nav Bar    ------------------------>
<%-- <---------------- end of the headline --%>


    
    
        <%-- body --%>
        
        <!-- Carousel
    ================================================== -->
    
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner"  >
        <div class="item active">
            <img src="http://i1374.photobucket.com/albums/ag414/assafbt/MYSPECIALDAYlogobig_zpsf1f9e34e.jpg"  />   <%-- first picture --%>
            
          <div class="container">
            <div class="carousel-caption">
             
              <%-- Note: If you're viewing this page via a <code>file://</code> URL, the "next" and "previous" Glyphicon buttons on the left and right might not load/display properly due to web browser security rules. --%>
                <p dir="rtl">מרגישים שאתם צריכים לעשות סדר באירוע מאוד משמעותי עבורם? </p>
                <p dir="rtl">רוצים ליצור קשר עם כל המוזמנים שלכם בקליק אחד?</p>
                <p dir="rtl"> רוצים לקבל מזכרת מרגשת בסוף האירוע?</p>
                <h3 dir="rtl"> אנחנו פה בדיוק בשביל זה </h3>
                <h3> My Special Day </h3>
                <p><a class="btn btn-lg btn-primary" href="Account/Login.aspx" role="button">הירשם עוד היום</a></p>
               
            </div>
          </div>
        </div>
        <div class="item">
        <%--    <img data-src="holder.js/900x500/auto/#666:#6a6a6a/text:Second slide" alt="Second slide"> --%>
            <img src="http://i1374.photobucket.com/albums/ag414/assafbt/wedding_gazebo_by_the_sea_204277_zps3e31e7ca.jpg" /> <%-- Second picture --%>
            
          <div class="container">
            <div class="carousel-caption">
              <h1 dir="rtl">אנחנו מזמינים אתכם להתרשם</h1>
              <p> </p>
              <p><a class="btn btn-lg btn-primary" href="EventProfile.aspx?eventId=1111" role="button">אירוע לדוגמא</a></p>
            </div>
          </div>
        </div>
        <div class="item">
      <%--     <img data-src="Content/images/lake%20taupo%20NZ.JPG:Third slide" alt="Third slide"> --%>
            <img src="http://i1374.photobucket.com/albums/ag414/assafbt/wedding_bridge_groom_zps6f8bbeac.jpg" /> <%-- Third picture --%>
            
          <div class="container">
            <div class="carousel-caption">
              <h1 dir="rtl"> עוד לא נרשמת? </h1>
              <p> </p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">הירשם עכשיו</a></p>
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
      <a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
    </div><!-- /.carousel -->
      
       <%--body --%>
</div>
        </form>    
</body>

<%--</asp:Content>--%>

