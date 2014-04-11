<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication2.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <address>
    <strong>Support:</strong>   <a href="mailto:my.special.day@hotmail.com">contact</a><br />
    <strong>Marketing:</strong> <a href="assafbt@gmail.com">contact</a><br />
        <strong>team mail:</strong>   <a href="mailto:my.special.day@hotmail.com">mail</a><br />
    <p>
        <asp:Image runat="server" AlternateText="My Special Day" 
  ImageUrl="https://camo.githubusercontent.com/911d1197f72b9da5aa7573d55df28eb53af9c197/687474703a2f2f69313337342e70686f746f6275636b65742e636f6d2f616c62756d732f61673431342f617373616662742f4d6f62696c6525323055706c6f6164732f4d592532305350454349414c2532304441592532306c6f676f2d315f7a7073767a7161303377792e6a7067"   
  ToolTip="My Special Day logo" ID="imgLogo" />
    </p>
    <h3>Mannagers</h3>
    <strong>assaf:</strong>   <a href="mailto:assafbt@gmail.com">mail</a><br />
    <strong>lea:</strong>   <a href="mailto:lea.cohen.sabban@gmail.com">mail</a><br />
    </address>
</asp:Content>
