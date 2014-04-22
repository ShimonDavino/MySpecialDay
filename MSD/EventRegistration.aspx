<%@ Page Title="EventRegistration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EventRegistration.aspx.cs" Inherits="MSD.EventRegistration" %>

<%--  
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Event Registration</h3>
    <p>Use this area to provide additional information.</p>
</asp:Content>
--%>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
        .selectDefualtOp {
            display: none;
            width:200px;
            color: gray;
        }
        h1
        {
            color:red;
        }
        tr {
            height:50px;
        }
        input
        {
            width:200px;
        }
    </style>
    <h1>Creat Event Registration page </h1><br />
    <form  id="ceateEvent" method="post" action="main.aspx" >
        <table  border="0">
            <tr>
                <td  style="width: 200px">Event type: </td>
                <td>
                    <select form="ceateEvent">
                        <option selected="true" class="selectDefualtOp">Select an option</option>
                        <option>Wedding</option>
                        <option>Brit</option>
                        <option>Brita</option>
                        <option>Bar Mitzva</option>
                        <option>Bat Mitzva</option>
                        <option>other</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>First Name(event owner):    </td>
                <td><input type="text" /></td>
            </tr>
            <tr>
                <td>Last Name(event owner):    </td>
                <td><input type="text" /></td>
            </tr>  
            <tr>
                <td>First Name(suppose):    </td>
                <td><input type="text" /></td>
            </tr>
            <tr>
                <td>Last Name(suppose):    </td>
                <td><input type="text" /></td>
            </tr>          
            <tr>
                <td>Event Date:    </td>
                <td><input type="datetime" /></td>
            </tr>            <tr>
                <td>Event Place:    </td>
                <td><input type="text" /></td>
            </tr> 
            <tr >
               <td>
                <input type="submit" value="send" style="width:50px" />
               </td>
            </tr>           
        </table>
    </form>

</asp:Content>
