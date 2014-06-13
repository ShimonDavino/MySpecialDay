<%@ Page Title="EventRegistration" MasterPageFile="" EnableEventValidation="false" Language="C#" AutoEventWireup="true" CodeBehind="EventRegistration.aspx.cs" Inherits="MSD.EventRegistration" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">--%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<%-- <---------------- start of the headline --%>
<head runat="server">
    <title>יצירת אירוע</title>
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
      <%-- <img src="../Content/images/MY SPECIAL DAY logo small.jpg" alt="logo" height="50" width="50" />--%>
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
     
      <%--<button type="button" class="btn btn-default navbar-btn  btn-inverse  navbar-left  btn-xs" id="registerButton" >רישום</button>
      
      <button type="button" class="btn btn-default navbar-btn  navbar-left btn-xs btn-primary"  >כניסה</button>--%>
        <asp:Label ID="Label1" class="btn btn-default navbar-btn  navbar-left btn-xs btn-primary" runat="server" Text="Label">ברוך הבא- User name</asp:Label>
  </div><!-- /.navbar-collapse -->
       
      
  </nav> <!-- End of Nav Bar    ------------------------>
<%-- <---------------- end of the headline --%>
        
   <section id="prodacts"  class="row">
       <br /><br />
       <div class="col-sm-4" >
         <p class="text_3D" dir="rtl"> יצירת אירוע </p> <br />   
         <table  border="0">
            <tr>
                <td>סוג האירוע:</td>
                <td>
                    <asp:DropDownList CssClass="textboxCss" ID="EventTypeDropDownList" runat="server">
                         <asp:ListItem Value="Chatona">חתונה</asp:ListItem>
                        <asp:ListItem Value="Bar_mizva">בר מצווה</asp:ListItem>
                        <asp:ListItem Value="Bat_mizva">בת מצווה</asp:ListItem>
                        <asp:ListItem Value="Brit">ברית</asp:ListItem>
                        <asp:ListItem Value="Brita">בריתה</asp:ListItem>
                        <asp:ListItem Value="other">אחר</asp:ListItem>
                    </asp:DropDownList>

                   
                </td>
            </tr>
            <tr>
                <td dir="rtl">שם פרטי (בעל האירוע):    </td>
                <td>
                   <asp:TextBox CssClass="textboxCss" ID="EventOwnerNameTextBox" runat="server"></asp:TextBox> </td> 
            </tr>
            <tr>
                <td dir="rtl">שם משפחה (בעל האירוע):    </td>
                <td>
                    <asp:TextBox CssClass="textboxCss" ID="Family_1EventOwnerTextBox" runat="server"></asp:TextBox></td>
            </tr>  
            <tr>
                <td dir="rtl">שם פרטי (בן הזוג):    </td>
                <td>
                    <asp:TextBox CssClass="textboxCss" ID="PartnerNameTextBox" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td dir="rtl">שם משפחה (בן הזוג):    </td>
                <td>
                    <asp:TextBox CssClass="textboxCss" ID="FamilyPartnerNameTextBox" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td dir="rtl">פלאפון(של בעל האירוע):    </td>
                <td>
                    <asp:TextBox CssClass="textboxCss" ID="PhoneOf_EventOwnerTextBox" runat="server"></asp:TextBox></td>
            </tr>          
            <tr>
                <td dir="rtl">תאריך האירוע:    </td>
                <td><asp:TextBox CssClass="textboxCss" ID="datepicker" runat="server"></asp:TextBox>&nbsp;
                </td>
            </tr>
           
             <tr>
                <td dir="rtl">מיקום האירוע:    </td>
                <td>
                    <asp:TextBox CssClass="textboxCss" ID="EventPlaceTextBox" runat="server"></asp:TextBox></td>
            </tr> 
            <tr>
                <td dir="rtl">כתובת האירוע:    </td>
                <td>
                    <asp:TextBox CssClass="textboxCss" ID="EventAddressTextBox" runat="server"></asp:TextBox></td>
            </tr> 
            <tr>
                <td dir="rtl">טלפון של מקום האירוע :    </td>
                <td>
                    <asp:TextBox CssClass="textboxCss" ID="PhoneOf_EventPlaceTextBox" runat="server"></asp:TextBox></td>
            </tr>
             <tr><td></td></tr>   

            <tr>
               <td >
                   <asp:Button CssClass="buttonCss" ID="RegiaterUserToEvent" runat="server" Text="הירשם לאירוע" OnClick="RegiaterUserToEvent_Click" />
               </td>
                
            </tr>           
        </table>
       
       </div>

   
   </section> <!-- End Of My  Products    --->






    <%--<html>
        <head>


            <style type="text/css" >
            .selectDefualtOp {
            display: none;
            width:200px;
            color: gray;
        }
        h1
        {
            color:blue;
        }
        tr {
            height:50px;
        }
        input
        {
            width:200px;
        }
        </style>
            <title>יצירת אירוע</title>

                 <link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
                <script src="//code.jquery.com/jquery-1.10.2.js"></script>
                <script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
                <link rel="stylesheet" href="/resources/demos/style.css">
                <script src="/jquery.ui.datepicker-he.js"></script>
                <script src="Scripts/DatePicker.js"></script>--%>
               <%-- <script>
                  $(function () {
                      $("#datepicker").datepicker({ dateFormat: 'dd/mm/yy', changeYear: true });
                      $("#datepicker").datepicker($.datepicker.regional["he"]);
                  });
                  $(".selector").datepicker({ minDate: new Date(2007, 1 - 1, 1) });
                  //$.datepicker.setDefaults({
                  //    showOn: "both",
                  //    buttonImageOnly: true,
                  //    buttonImage: "calendar.gif",
                  //    buttonText: "Calendar"
                  //});
                  $.datepicker.formatDate("yy-mm-dd", new Date(2007, 1 - 1, 26));
                </script>--%>
            
       <%-- </head>
        <body>--%>

    
    <%--<form dir="rtl" runat="server" > --%>
       <%-- <table  border="0" dir="rtl">
            <tr>
                <td  style="width: 200px" dir="rtl">סוג האירוע:  </td>
                <td>
                    <asp:DropDownList ID="EventTypeDropDownList" runat="server">
                         <asp:ListItem Value="Chatona">חתונה</asp:ListItem>
                        <asp:ListItem Value="Bar_mizva">בר מצווה</asp:ListItem>
                        <asp:ListItem Value="Bat_mizva">בת מצווה</asp:ListItem>
                        <asp:ListItem Value="Brit">ברית</asp:ListItem>
                        <asp:ListItem Value="Brita">בריתה</asp:ListItem>
                        <asp:ListItem Value="other">אחר</asp:ListItem>
                    </asp:DropDownList>

                   
                </td>
            </tr>
            <tr>
                <td dir="rtl">שם פרטי (בעל האירוע):    </td>
                <td>
                   <asp:TextBox ID="EventOwnerNameTextBox" runat="server">הכנס שם פרטי</asp:TextBox> </td> 
            </tr>
            <tr>
                <td dir="rtl">שם משפחה (בעל האירוע):    </td>
                <td>
                    <asp:TextBox ID="Family_1EventOwnerTextBox" runat="server"></asp:TextBox></td>
            </tr>  
            <tr>
                <td dir="rtl">שם פרטי (בן הזוג):    </td>
                <td>
                    <asp:TextBox ID="PartnerNameTextBox" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td dir="rtl">שם משפחה (בן הזוג):    </td>
                <td>
                    <asp:TextBox ID="FamilyPartnerNameTextBox" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td dir="rtl">פלאפון(של בעל האירוע):    </td>
                <td>
                    <asp:TextBox ID="PhoneOf_EventOwnerTextBox" runat="server"></asp:TextBox></td>
            </tr>          
            <tr>
                <td dir="rtl">תאריך האירוע:    </td>
                <td><asp:TextBox ID="datepicker" runat="server"></asp:TextBox>&nbsp;
                
                 
            </tr>
           
             <tr>
                <td dir="rtl">מיקום האירוע:    </td>
                <td>
                    <asp:TextBox ID="EventPlaceTextBox" runat="server"></asp:TextBox></td>
            </tr> 
            <tr>
                <td dir="rtl">כתובת האירוע:    </td>
                <td>
                    <asp:TextBox ID="EventAddressTextBox" runat="server"></asp:TextBox></td>
            </tr> 
            <tr>
                <td dir="rtl">טלפון של מקום האירוע :    </td>
                <td>
                    <asp:TextBox ID="PhoneOf_EventPlaceTextBox" runat="server"></asp:TextBox></td>
            </tr>   
            <tr >
               <td dir="rtl">
                   <asp:Button ID="RegiaterUserToEvent" runat="server" Text="הירשם לאירוע" OnClick="RegiaterUserToEvent_Click" />
               </td>
                
            </tr>           
        </table>--%>

</div>
</form>
</body>
 </html>
<%--</asp:Content>--%>
