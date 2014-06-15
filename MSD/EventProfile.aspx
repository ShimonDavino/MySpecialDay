<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="eventProfile.aspx.cs" Inherits="MSD.eventProfile_shaul" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<%-- <---------------- start of the headline --%>
<head runat="server">
    <title>עמוד אירוע אישי</title>
    <!-- Jquery is requierd-->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" />

    <!-- Optional theme -->
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css" />

    <!-- Latest compiled and minified JavaScript -->
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
    <!-- my css file -->
    <link href="../EventRegistration.css" rel="stylesheet" />


    <link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css" />
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
    <link rel="stylesheet" href="/resources/demos/style.css" />
    <script src="/jquery.ui.datepicker-he.js"></script>

    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta charset="UTF-8" />

</head>
<body>

    <form id="form1" dir="rtl" runat="server">
        <div class="container">
            <nav class="navbar navbar-fixed-top navbar-inverse" role="navigation">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                        <span class="sr-only">Toggle navigation</span>
                    </button>

                </div>
            </nav>

            <!-- My Nav Bar    ------------------------>
            <nav class="navbar navbar-default navbar-fixed-top navbar-inverse" role="navigation">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                        <%--<span class="sr-only">Toggle navigation</span>
    <span class="icon-bar"></span>
   <span class="icon-bar"></span>
    <span class="icon-bar"></span>--%>
                    </button>
                    <%--<img src="" alt="logo" height="50" width="50" />--%>
                </div>


                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse navbar-ex1-collapse ">

                    <ul class="nav navbar-nav navbar-right  " id="menu_items">
                        <li class="active navbar-right"><a href="../main.aspx">My Special Day</a></li>
                        <li class="navbar-right"><a href="../About.aspx">מי אנחנו</a></li>

                        <%-- <li class="navbar-right"> <a href="ProductsForm.aspx">מוצרים</a></li>--%>
                        <li class="navbar-right"><a href="../Contact.aspx">צרו קשר</a></li>
                        <li class="navbar-right"></li>
                    </ul>
                    <ul class="nav navbar-nav">
                        <li>
                            <asp:Button  CssClass="btn btn-default navbar-btn  btn-inverse  navbar-left  btn-xs" ID="exitButton" runat="server" Visible="false" Text="יציאה" OnClick="exitButton_Click" /></li>
                        <li>
                            <asp:HyperLink ID="registerLink" runat="server" NavigateUrl="~/Account/Register">רישום</asp:HyperLink></li>
                        <li>
                            <asp:HyperLink ID="enterLink" runat="server" NavigateUrl="~/Login">כניסה</asp:HyperLink></li>
                    </ul>
                    <%--<button type="button" class="btn btn-default navbar-btn  btn-inverse  navbar-left  btn-xs" id="registerButton" >רישום</button>--%>

                    <%-- <button type="button" class="btn btn-default navbar-btn  navbar-left btn-xs btn-primary"><a href="../Login.aspx">כניסה</a></button>--%>
                </div>
                <!-- /.navbar-collapse -->


            </nav>
            <!-- End of Nav Bar    ------------------------>
            <%-- <---------------- end of the headline --%>
            <br />
            <p class="text_3D" align="center" dir="rtl">
                ברוך הבא לדף האירוע שלך :   
             <asp:Label ID="EventOwnerNameLable" runat="server" Text=""></asp:Label>
            </p>

            <section id="prodacts" class="row">
                <div class="col-sm-4">
                    <asp:ImageButton ID="ImgLink" Width="250" Height="250" src="Content/images/mi-ba_4.jpg" alt="לחץ כאן לאשר את הגעתך לאירוע..." CssClass="img-thumbnail img-responsive" runat="server" OnClick="confirmArrivalImageButton_Click" />
                    
                    <%--<img width="250" height="250" src="Content/images/mi-ba_4.jpg" alt="לחץ כאן לאשר את הגעתך לאירוע..." class="img-thumbnail img-responsive" />--%>
                    <p>כנס לקישור זה כדי לאשר הגעה</p>

                </div>

                <div class="col-sm-4">
                    <p>חלון הודעות ועדכונים</p>
                    <asp:TextBox ID="MessagesTextBox" runat="server" BorderStyle="Dashed" BackColor="White" TextMode="MultiLine" ReadOnly="True" Height="200px" Width="300px"></asp:TextBox>
                </div>

                <div class="col-sm-4">
                    <img width="250" height="250" src="Content/images/MY SPECIAL DAY logo small.jpg" alt="..." class="img-thumbnail img-responsive" />
                    <p>כנס לקישור זה כדי הלעלות ברכה</p>

                </div>

                <div class="row">
                    <div class="col-lg-3 col-lg-offset-1">
                        <img src="Content/images/MY SPECIAL DAY logo big.jpg" alt="..." class="img-thumbnail img-responsive" />
                        <p>כנס לקישור זה כדי לראות רשימת מתנות</p>
                    </div>

                    <div class="col-sm-4">
                        <p>לוח טרמפים והסעות  </p>
                        <asp:TextBox ID="RidesTextBox" runat="server" BorderStyle="Dashed" BackColor="White" TextMode="MultiLine" ReadOnly="True" Height="200px" Width="300px"></asp:TextBox>
                    </div>

                    <div class="col-lg-3 col-lg-offset-1 ">
                        <img src="Content/images/MY SPECIAL DAY logo big.jpg" alt="..." class="img-thumbnail img-responsive" />
                        <p></p>
                    </div>

                </div>

            </section>
        </div>



    </form>
</body>
</html>
