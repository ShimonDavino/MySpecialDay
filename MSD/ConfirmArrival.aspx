<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="ConfirmArrival.aspx.cs" Inherits="MSD.ConfirmArrival" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
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
            

</asp:Content>