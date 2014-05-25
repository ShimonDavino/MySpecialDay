<%@ Page Title="UserProfile" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="MSD.UserProfile" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
<%--    <h3>hello <%:  GetUserName()  %></h3> <%--get.username()--%>

    <asp:Label ID="get_UsernameLable" runat="server"></asp:Label>
    this is your User Profile</p>
    <li><a runat="server" href="~/EventRegistration" title="Event Registration">יצירת אירוע חדש</a></li>
    
    <p>.</p>
</asp:Content>



<%--username


hello UN--%>