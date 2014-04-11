<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="WebApplication2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Wellcome to My Special Day Project</h1>
        <p class="lead"> this is our Temporary ProtoType.</p>
         <p>
        <asp:Image runat="server" AlternateText="My Special Day" 
  ImageUrl="https://camo.githubusercontent.com/911d1197f72b9da5aa7573d55df28eb53af9c197/687474703a2f2f69313337342e70686f746f6275636b65742e636f6d2f616c62756d732f61673431342f617373616662742f4d6f62696c6525323055706c6f6164732f4d592532305350454349414c2532304441592532306c6f676f2d315f7a7073767a7161303377792e6a7067"   
  ToolTip="My Special Day logo" ID="imgLogo" />
    </p>
        <p><a href="https://github.com/assafbt" class="btn btn-primary btn-large">Project wiki @GitHub &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>the project goal</h2>
            <p>
                The main goal of "My Special Day" website is to help with all the small details that cost lots of time and to leave a pleasant memory after the event.
            </p>
        </div>
        <div class="col-md-4">
            <h2>about us</h2>
            <p>
                We are extrimely special team. doing everything we can to uprise this project
            </p>
            <p>
                <a class="btn btn-default" href="https://github.com/ShimonDavino/MySpecialDay/wiki/Team-page"> more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>The Course</h2>
            <p>
                the project is part of SE course, at Software Engenire degree (from JCE)
            </p>
            <p>
                <a class="btn btn-default" href="https://github.com/jce-il/se-class/wiki">come visit us &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
