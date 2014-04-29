<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="MSD._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  
    
    <body>
        
        <!-- Carousel
    ================================================== -->
    
    <div id="myCarousel" class="carousel slide" data-ride="carousel" align="center">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner"  >
        <div class="item active">
            <img src="http://i1374.photobucket.com/albums/ag414/assafbt/MYSPECIALDAYlogobig_zpsf1f9e34e.jpg"  />   <%-- first picture --%>
            
          <div class="container">
            <div class="carousel-caption">
              <h1>Example headline.</h1>
              <p>Note: If you're viewing this page via a <code>file://</code> URL, the "next" and "previous" Glyphicon buttons on the left and right might not load/display properly due to web browser security rules.</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>
            </div>
          </div>
        </div>
        <div class="item">
        <%--    <img data-src="holder.js/900x500/auto/#666:#6a6a6a/text:Second slide" alt="Second slide"> --%>
            <img src="http://i1374.photobucket.com/albums/ag414/assafbt/wedding_gazebo_by_the_sea_204277_zps3e31e7ca.jpg" /> <%-- Second picture --%>
            
          <div class="container">
            <div class="carousel-caption">
              <h1>Another example headline.</h1>
              <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
            </div>
          </div>
        </div>
        <div class="item">
      <%--     <img data-src="Content/images/lake%20taupo%20NZ.JPG:Third slide" alt="Third slide"> --%>
            <img src="http://i1374.photobucket.com/albums/ag414/assafbt/wedding_bridge_groom_zps6f8bbeac.jpg" /> <%-- Third picture --%>
            
          <div class="container">
            <div class="carousel-caption">
              <h1>One more for good measure.</h1>
              <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
      <a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
    </div><!-- /.carousel -->
      
       
    </body> 
</asp:Content>

