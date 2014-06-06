<%@ Page Title="Register" Language="C#" MasterPageFile="" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="MSD.Account.Register" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
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
   <a class="navbar-brand" href="#">לוגו הארגון</a>
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
       <img src="../Content/images/MY SPECIAL DAY logo small.jpg" alt="logo" height="50" width="50" />
  </div>
          
          
 <!-- Collect the nav links, forms, and other content for toggling -->
  <div class="collapse navbar-collapse navbar-ex1-collapse ">
      
  <ul class="nav navbar-nav navbar-right  "  id="menu_items">
   <li class="active navbar-right"><a href="#">דף הבית</a></li>
  <li class="navbar-right"><a href="#">מי אנחנו</a></li>
  <li class="navbar-right"> <a href="ProductsForm.aspx">מוצרים</a></li>
   <li class="navbar-right"><a href="#">צרו קשר</a></li>
  <li  class="navbar-right">
  
  <a href="#" class="dropdown-toggle " data-toggle="dropdown">עזרה <b class="caret"></b></a>
   <ul class="dropdown-menu ">
   <li ><a href="#">בלוג</a></li>
   <li ><a href="#">פורום</a></li>
  <li ><a href="#">שאלות ותשובות</a></li>
  <li ><a href="#">גירסה 1.0.1</a></li>
   </ul>
            
   </li>
   </ul>
     
      <button type="button" class="btn btn-default navbar-btn  btn-inverse  navbar-left  btn-xs" id="registerButton" >רישום</button>
      
      <button type="button" class="btn btn-default navbar-btn  navbar-left btn-xs btn-primary"  >כניסה</button>
   
  </div><!-- /.navbar-collapse -->
       
      
  </nav> <!-- End of Nav Bar    ------------------------>
        
   <%--<section id="prodacts" class="row">
       <div class="col-sm-5">--%>
       <br /><br />
         <p class="text_3D" dir="rtl"> יצירת אירוע </p> <br /> <br />  
          <table>
              <tr>
                  <td><asp:Label runat="server" AssociatedControlID="UserNameTextBox">שם משתמש</asp:Label></td>
                  <td><asp:TextBox  runat="server" ID="UserNameTextBox" CssClass="textboxCss" BorderStyle="Solid" MaxLength="10" ToolTip="הכנס שם משתמש עד 10 אותיות וספרות " />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserNameTextBox"
                    CssClass="text-danger" ErrorMessage="The user name field is required." /></td>
              </tr>
              <tr>
                  <td> <asp:Label runat="server" AssociatedControlID="PasswordTextBox" CssClass="">סיסמה</asp:Label></td>
                  <td> <asp:TextBox runat="server" ID="PasswordTextBox" TextMode="Password" CssClass="textboxCss" BorderStyle="Solid" MaxLength="10" ToolTip="הכנס סיסמה עד 10 ספרות" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="PasswordTextBox"
                    CssClass="text-danger" ErrorMessage="The password field is required." /></td>
              </tr>
              <tr>
                  <td><asp:Label runat="server" AssociatedControlID="ConfirmPassword">אישור סיסמה</asp:Label></td>
                  <td><asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="textboxCss" BorderStyle="Solid" MaxLength="9" ToolTip="אשר את הסיסמה שהכנסת קודם לכן " />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                <asp:CompareValidator runat="server" ControlToCompare="PasswordTextBox" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." /></td>
              </tr>
             
               <tr>
            <td>
                 <br /><br /><asp:Button runat="server" ID="CreateUserButton" OnClick="CreateUser_Click" Text="רישום" CssClass="buttonCss" />
         </td>
            </tr>
        <tr>
            <td>
        <asp:Label ID="RegisterError" runat="server" Font-Bold="True" ForeColor="Maroon"></asp:Label>
        </td>
        </tr>
          </table>
    <%--   </div>
   </section> <!-- End Of My  Products    --->--%>



</div> <%--End of container div--%>
</form>
</body>
 </html>

