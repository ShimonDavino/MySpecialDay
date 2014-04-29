<%@ Page Title="EventRegistration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EventRegistration.aspx.cs" Inherits="MSD.EventRegistration" %>

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

    <h1> יצירת אירוע </h1><br />
    <form id="ceateEvent" method="post" action="main.aspx" dir="rtl" >
        <table  border="0" dir="rtl">
            <tr>
                <td  style="width: 200px">סוג האירוע:  </td>
                <td>
                    <select form="ceateEvent">
                        <option selected="" class="selectDefualtOp">בחר</option>
                        <option>חתונה</option>
                        <option>ברית</option>
                        <option>בריתה</option>
                        <option>בר מצווה</option>
                        <option>בת מצווה</option>
                        <option>אחר</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>שם פרטי (בעל האירוע):    </td>
                <td><input type="text" /></td>
            </tr>
            <tr>
                <td>שם משפחה (בעל האירוע):    </td>
                <td><input type="text" /></td>
            </tr>  
            <tr>
                <td>שם פרטי (בן הזוג):    </td>
                <td><input type="text" /></td>
            </tr>
            <tr>
                <td>שם משפחה (בן הזוג):    </td>
                <td><input type="text" /></td>
            </tr>          
            <tr>
                <td>תאריך האירוע:    </td>
                <td><input type="datetime" /></td>
            </tr>            <tr>
                <td>מיקום האירוע:    </td>
                <td><input type="text" /></td>
            </tr> 
            <tr >
               <td>
                <%--  <input type="submit" value="שלח" style="width:50px" /> --%>
                <a href="EventProfile.aspx">שלח</a>
               </td>
                
            </tr>           
        </table>
    </form>

</asp:Content>
