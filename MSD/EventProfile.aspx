<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="eventProfile.aspx.cs" Inherits="MSD.eventProfile_shaul" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
 <div>
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

</asp:Content>