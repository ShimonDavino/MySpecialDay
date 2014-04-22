<%@ Page Title="UserProfile" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="MSD.UserProfile" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>hello <%: Context.User.Identity.GetUserName()  %></h3>
     this is your User Profile</p>
    <li><a runat="server" href="~/EventRegistration" title="Event Registration">יצירת אירוע חדש</a></li>
    
    <p>Use this area to provide additional information.</p>
</asp:Content>
