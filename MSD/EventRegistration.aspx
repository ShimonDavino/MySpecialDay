<%@ Page Title="EventRegistration" EnableEventValidation="false" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EventRegistration.aspx.cs" Inherits="MSD.EventRegistration" %>

<%--  
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Event Registration</h3>
    <p>Use this area to provide additional information.</p>
</asp:Content>
--%>
       
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server" >
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

    <h1 dir="rtl"> יצירת אירוע </h1><br />
    <%--<form id="ceateEvent" method="post" action="main.aspx" dir="rtl" >--%>
    <form dir="rtl">
        <table  border="0" dir="rtl">
            <tr>
                <td  style="width: 200px" dir="rtl">סוג האירוע:  </td>
                <td>
                    <asp:DropDownList ID="EventTypeDropDownList" runat="server">
                         <asp:ListItem>חתונה</asp:ListItem>
                        <asp:ListItem>בר מצווה</asp:ListItem>
                        <asp:ListItem>בת מצווה</asp:ListItem>
                        <asp:ListItem>ברית</asp:ListItem>
                        <asp:ListItem>בריתה</asp:ListItem>
                        <asp:ListItem>אחר</asp:ListItem>
                    </asp:DropDownList>

                    <%--<select form="ceateEvent">
                        <option selected="" class="selectDefualtOp">בחר</option>
                        <option>חתונה</option>
                        <option>ברית</option>
                        <option>בריתה</option>
                        <option>בר מצווה</option>
                        <option>בת מצווה</option>
                        <option>אחר</option>
                    </select>--%>
                </td>
            </tr>
            <tr>
                <td dir="rtl">שם פרטי (בעל האירוע):    </td>
                <td>
                   <asp:TextBox ID="EventOwnerNameTextBox" runat="server">הכנס שם פרטי</asp:TextBox> </td>   <%--<input type="text" />--%>
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
                <%--<td colspan="2"><asp:TextBox ID="EventDateTextBox_d" runat="server"></asp:TextBox></td>
                <td colspan="2"><asp:TextBox ID="EventDateTextBox_m" runat="server"></asp:TextBox></td>
                <td><asp:TextBox ID="EventDateTextBox_y" runat="server"></asp:TextBox></td>--%>
                <td><asp:TextBox ID="EventDateTextBox" runat="server" MaxLength="10"></asp:TextBox>&nbsp;
                    <%--<asp:TextBox ID="EventDateTextBox_m" runat="server" Height="30px" Width="48px" BorderStyle="Inset" MaxLength="10"></asp:TextBox>&nbsp;
                    <asp:TextBox ID="EventDateTextBox_y" runat="server" Height="30px" Width="48px" BorderStyle="Inset" MaxLength="10"></asp:TextBox>&nbsp;--%>

                </td>  
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
        </table>
    </form>

</asp:Content>
