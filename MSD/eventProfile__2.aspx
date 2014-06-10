<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="eventProfile__2.aspx.cs" Inherits="MSD.eventProfile__2" %>
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
   <%--<a class="navbar-brand" href="#">לוגו הארגון</a>--%>
   </div>                    
 </nav>
        
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
       <%--<img src="" alt="logo" height="50" width="50" />--%>
  </div>
          
          
 <!-- Collect the nav links, forms, and other content for toggling -->
  <div class="collapse navbar-collapse navbar-ex1-collapse ">
      
  <ul class="nav navbar-nav navbar-right  "  id="menu_items">
   <li class="active navbar-right"><a href="../main.aspx">My Special Day</a></li>
  <li class="navbar-right"><a href="../About.aspx">מי אנחנו</a></li>

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
     
      <%--<button type="button" class="btn btn-default navbar-btn  btn-inverse  navbar-left  btn-xs" id="registerButton" >רישום</button>--%>
      
      <button type="button" class="btn btn-default navbar-btn  navbar-left btn-xs btn-primary"><a href="../Login.aspx">כניסה</a></button>
   
  </div><!-- /.navbar-collapse -->
       
      
  </nav> <!-- End of Nav Bar    ------------------------>
<%-- <---------------- end of the headline --%>
    
    </div>
    </form>
</body>
</html>
