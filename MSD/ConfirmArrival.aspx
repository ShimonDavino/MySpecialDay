<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmArrival.aspx.cs" Inherits="MSD.ConfirmArrival" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<%-- <---------------- start of the headline --%>
<head runat="server">
    <title>דף אישורי הגעה</title>
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

    <style type="text/css">
        .auto-style1 {
            width: 263px;
        }
    </style>

</head>
<body>
    
    <form id="form1" dir="rtl" runat="server">
    <div class ="container">
      <nav class="navbar navbar-fixed-top navbar-inverse" role="navigation">                
      <div class="navbar-header">
       <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
        <span class="sr-only">Toggle navigation</span>
    </button>
   
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
            
   </li>
   </ul>

      <ul class="nav navbar-nav"> 
            <li><asp:Button class="btn btn-default navbar-btn  btn-inverse  navbar-left  btn-xs" ID="exitButton" runat="server" Visible="false" Text="יציאה" OnClick ="exitButton_Click"/></li>
            <li><asp:HyperLink ID="registerLink" runat="server" NavigateUrl="~/Account/Register">רישום</asp:HyperLink></li>
			<li><asp:HyperLink ID="enterLink" runat="server" NavigateUrl="~/Login">כניסה</asp:HyperLink>></li>  <%--~/Login--%>
        </ul>
     
      <%--<button type="button" class="btn btn-default navbar-btn  btn-inverse  navbar-left  btn-xs" id="registerButton" >רישום</button>--%>
      
     <%-- <button type="button" class="btn btn-default navbar-btn  navbar-left btn-xs btn-primary"><a href="../Login.aspx">כניסה</a></button>--%>
   
  </div><!-- /.navbar-collapse -->
       
      
  </nav> <!-- End of Nav Bar    ------------------------>
<%-- <---------------- end of the headline --%>
        <br />
         <p class="text_3D" align="right" dir="rtl">אישורי הגעה לאירוע של :    
             <asp:Label ID="EventOwnerNameLable" runat="server" Text="Label">user name</asp:Label>
         </p>
        <br /><br />
        <div class="row">
        <div class="col-lg-4 col-lg-offset-8">
         <table>
              <tr>
                  <td><asp:Label runat="server" ID="PrivateNameLable" Font-Bold="True" Font-Names="Guttman Yad-Brush" Font-Size="Medium">שם פרטי</asp:Label></td>
                  <td class="auto-style1"><asp:TextBox  runat="server" ID="PrivateNameTextBox" CssClass="textboxCss" BorderStyle="Solid" MaxLength="10" ToolTip="הכנס את שמך" />
                  <asp:RequiredFieldValidator runat="server" ControlToValidate="PrivateNameTextBox"
                    CssClass="text-danger" ErrorMessage="נא למלא את השדה" /></td>
        

              </tr>
              <tr>
                  <td> <asp:Label runat="server" ID="PartnerNameLable" Font-Bold="True" Font-Names="Guttman Yad-Brush" Font-Size="Medium">בן זוג</asp:Label></td>
                  <td class="auto-style1"> <asp:TextBox runat="server" ID="PartnerNameTextBox" CssClass="textboxCss" BorderStyle="Solid" MaxLength="10" ToolTip="הכנס שם של בת\בן זוג אם יש" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="PartnerNameTextBox"
                    CssClass="text-danger" ErrorMessage="נא למלא את השדה" /></td>
              </tr>
             <tr>
                  <td> <asp:Label runat="server" ID="FamilyLabel" Font-Bold="True" Font-Names="Guttman Yad-Brush" Font-Size="Medium">שם משפחה</asp:Label></td>
                  <td class="auto-style1"> <asp:TextBox runat="server" ID="FamilyTextBox" CssClass="textboxCss" BorderStyle="Solid" MaxLength="10" ToolTip="הכנס שם משפחה" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="FamilyTextBox"
                    CssClass="text-danger" ErrorMessage="נא למלא את השדה" /></td>
              </tr>

            <tr>
                  <td> <asp:Label runat="server" ID="HowMatchCommingLabel" Font-Bold="True" Font-Names="Guttman Yad-Brush" Font-Size="Medium">כמות אנשים</asp:Label></td>
                  <td class="auto-style1"> <asp:TextBox runat="server" ID="HowMatchCommingTextBox" CssClass="textboxCss" BorderStyle="Solid" MaxLength="2" ToolTip="הכנס את מספר האנשים שבאים איתך(כולל ילדים)" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="HowMatchCommingTextBox"
                    CssClass="text-danger" ErrorMessage="נא למלא את השדה" /></td>
              </tr>
              
             
        <tr>  
        <td><asp:Label ID="msgLabel" runat="server" Font-Bold="True" ForeColor="Maroon"></asp:Label></td>
        <td></td>
        </tr>
            <tr><td></td><td></td></tr>
             <tr>
            <td>
                 <asp:Button runat="server" ID="ConfirmArrivalButton" OnClick="ConfirmArrivalButton_Click"   Text="אשר הגעה" CssClass="buttonCss" />
         </td>
                
                 <td align="center" class="auto-style1">
                      <asp:Button ID="ViewInvitesButton" runat="server" Text="הצג מוזמנים" BorderStyle="Dotted" CssClass="btn-toolbar" OnClick="ViewInvitesButton_Click" Width="114px" CausesValidation="False" ToolTip="לחץ כדי להציג את כל המוזמנים" />
                 </td>
            </tr>
             <tr><td></td><td></td></tr>
              <tr><td></td>
                  <td class="auto-style1">
                      <asp:Label ID="ViewInvitesLabel" runat="server" Text="הצגת מוזמנים שאישרו הגעה" Visible="False"></asp:Label>
                  </td>
              </tr>
             <tr>
                 <td></td>
                 <td class="auto-style1">
                     <asp:TextBox ID="ViewInvitesTextBox" Text="חפש מוזמן ספציפי" runat="server" Width="191px" CssClass="TextBoxCss" Visible="False" AutoPostBack="True" OnTextChanged="ViewInvitesTextBox_TextChanged" ToolTip="חפש מוזמן והקש ENTER">חפש מוזמן ספציפי</asp:TextBox>
                 </td>
                    
            </tr>
             <tr><td></td>
                 
                 <td class="auto-style1">
                     <asp:ListBox ID="ViewInvitesListBox" runat="server" Height="250px" Width="250px" Visible="False" ForeColor="#660066" BackColor="#FFFFCC" CssClass="list-group-item " Font-Bold="True" Font-Names="Guttman Yad-Brush" Font-Size="Small"></asp:ListBox>
                 </td>
                 <td></td>
             </tr>
             <tr>
                 <td>
                     <asp:Label ID="Label2" runat="server" Text="כמות משפחות" Font-Bold="True" Font-Italic="False" Font-Names="Guttman Yad-Light" Font-Size="Medium" Font-Underline="True" ForeColor="Maroon"></asp:Label></td>
                 <td>
                     <asp:TextBox ID="FamilyCountTextBox" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="#CC3300" Height="40px" Width="60px"></asp:TextBox></td>
             </tr>
              <tr>
                 <td>
                     <asp:Label ID="Label3" runat="server" Text="כמות אנשים" Font-Bold="True" Font-Italic="False" Font-Names="Guttman Yad-Light" Font-Size="Medium" Font-Underline="True" ForeColor="Maroon"></asp:Label></td>
                 <td>
                     <asp:TextBox ID="peopleCountTextBox" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="#CC3300" Height="40px" Width="60px"></asp:TextBox></td>
             </tr>
             <tr><td></td></tr>
          </table>
            
            </div>
           

            </div>
        




        <%--<div class="row">
            <div class="col-lg-2 col-lg-offset-10">
                <asp:Label ID="Label2" runat="server" Text="Label">שם פרטי</asp:Label>
             </div>
            <div class="col-lg-2 col-lg-offset-8">
               <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
             </div>
            </div>--%>
            


   
    
    </div>
    </form>
</body>
</html>
