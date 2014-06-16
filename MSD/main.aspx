<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="MSD._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">



        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="item active">
                    <img src="http://i1374.photobucket.com/albums/ag414/assafbt/MYSPECIALDAYlogobig_zpsf1f9e34e.jpg"  width="550">
                    <%-- first picture --%>

                    <div class="container">
                        <div class="carousel-caption">

                            <%-- Note: If you're viewing this page via a <code>file://</code> URL, the "next" and "previous" Glyphicon buttons on the left and right might not load/display properly due to web browser security rules. --%>
                            <p dir="rtl">מרגישים שאתם צריכים לעשות סדר באירוע מאוד משמעותי עבורם? </p>
                            <p dir="rtl">רוצים ליצור קשר עם כל המוזמנים שלכם בקליק אחד?</p>
                            <p dir="rtl">רוצים לקבל מזכרת מרגשת בסוף האירוע?</p>
                            <h3 dir="rtl">אנחנו פה בדיוק בשביל זה </h3>
                            <h3>My Special Day </h3>
                            <p><a class="btn btn-lg btn-primary" href="Account/Login.aspx" role="button">הירשם עוד היום</a></p>

                        </div>
                    </div>
                </div>
                <div class="item">
                    <%--    <img data-src="holder.js/900x500/auto/#666:#6a6a6a/text:Second slide" alt="Second slide"> --%>
                    <img src="http://i1374.photobucket.com/albums/ag414/assafbt/wedding_gazebo_by_the_sea_204277_zps3e31e7ca.jpg"  width="880" >
                    <%-- Second picture --%>

                    <div class="container">
                        <div class="carousel-caption">
                            <h1 dir="rtl">אנחנו מזמינים אתכם להתרשם</h1>
                            <p></p>
                            <p><a class="btn btn-lg btn-primary" href="EventProfile.aspx?EventId=11111" role="button">אירוע לדוגמא</a></p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <%--     <img data-src="Content/images/lake%20taupo%20NZ.JPG:Third slide" alt="Third slide"> --%>
                    <img src="http://i1374.photobucket.com/albums/ag414/assafbt/wedding_bridge_groom_zps6f8bbeac.jpg" width="545"  >
                    <%-- Third picture --%>

                    <div class="container">
                        <div class="carousel-caption">
                            <h1 dir="rtl">עוד לא נרשמת? </h1>
                            <p></p>
                            <p><a class="btn btn-lg btn-primary" href="#" role="button">הירשם עכשיו</a></p>
                        </div>
                    </div>
                </div>
            </div>
            <a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
        </div>
        <!-- /.carousel -->

        <%--body --%>

</asp:Content>

