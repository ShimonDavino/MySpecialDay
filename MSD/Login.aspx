<%@ Page Title="Log in" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MSD.Login" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

   <%--<section id="prodacts" class="row">
       <div class="col-sm-5">--%>
       <br /><br />
         <p class="text_3D" dir="rtl"> כניסת משתמש </p> <br /> <br />  
         
         <br /><br />
        <table>
              <tr>
                  <td><asp:Label runat="server" ID="UserNameLable">שם משתמש</asp:Label></td>
                  <td><asp:TextBox  runat="server" ID="UserNameTextBox" CssClass="textboxCss" BorderStyle="Solid" MaxLength="10" ToolTip="הכנס שם משתמש עד 10 אותיות וספרות " />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserNameTextBox"
                    CssClass="text-danger" ErrorMessage="The user name field is required." /></td>
              </tr>
              <tr>
                  <td> <asp:Label runat="server" ID="PasswordLable" CssClass="">סיסמה</asp:Label></td>
                  <td> <asp:TextBox runat="server" ID="PasswordTextBox" TextMode="Password" CssClass="textboxCss" BorderStyle="Solid" MaxLength="10" ToolTip="הכנס סיסמה עד 10 ספרות" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="PasswordTextBox"
                    CssClass="text-danger" ErrorMessage="The password field is required." /></td>
              </tr>
              <tr>
                 <td></td>
              </tr>
             
               <tr>
            <td>
                 <asp:Button runat="server" ID="CreateUserButton" OnClick="LogInUserButton_Click"  Text="כניסה" CssClass="buttonCss" />
         </td>
            </tr>
        <tr>
            <td>
        <asp:Label ID="msgLabel" runat="server" Font-Bold="True" ForeColor="Maroon"></asp:Label>
        </td>
        </tr>
          </table>
</asp:Content>


