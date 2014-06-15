<%@ Page Title="EventRegistration" MasterPageFile="~/Site.Master" EnableEventValidation="false" Language="C#" AutoEventWireup="true" CodeBehind="EventRegistration.aspx.cs" Inherits="MSD.EventRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


            <section id="prodacts" class="row">
                <br />
                <br />
                <div class="col-sm-4">
                    <p class="text_3D" dir="rtl">יצירת אירוע </p>
                    <br />
                    <table border="0">
                        <tr>
                            <td>סוג האירוע:</td>
                            <td>
                                <asp:DropDownList CssClass="textboxCss" ID="EventTypeDropDownList" runat="server">
                                    <asp:ListItem Value="Chatona">חתונה</asp:ListItem>
                                    <asp:ListItem Value="Bar_mizva">בר מצווה</asp:ListItem>
                                    <asp:ListItem Value="Bat_mizva">בת מצווה</asp:ListItem>
                                    <asp:ListItem Value="Brit">ברית</asp:ListItem>
                                    <asp:ListItem Value="Brita">בריתה</asp:ListItem>
                                    <asp:ListItem Value="other">אחר</asp:ListItem>
                                </asp:DropDownList>


                            </td>
                        </tr>
                        <tr>
                            <td dir="rtl">שם פרטי (בעל האירוע):    </td>
                            <td>
                                <asp:TextBox CssClass="textboxCss" ID="EventOwnerNameTextBox" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td dir="rtl">שם משפחה (בעל האירוע):    </td>
                            <td>
                                <asp:TextBox CssClass="textboxCss" ID="Family_1EventOwnerTextBox" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td dir="rtl">שם פרטי (בן הזוג):    </td>
                            <td>
                                <asp:TextBox CssClass="textboxCss" ID="PartnerNameTextBox" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td dir="rtl">שם משפחה (בן הזוג):    </td>
                            <td>
                                <asp:TextBox CssClass="textboxCss" ID="FamilyPartnerNameTextBox" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td dir="rtl">פלאפון(של בעל האירוע):    </td>
                            <td>
                                <asp:TextBox CssClass="textboxCss" ID="PhoneOf_EventOwnerTextBox" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td dir="rtl">תאריך האירוע:    </td>
                            <td>
                                <asp:Calendar ID="EventDateCalendar" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
                                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                    <NextPrevStyle VerticalAlign="Bottom" />
                                    <OtherMonthDayStyle ForeColor="#808080" />
                                    <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                    <SelectorStyle BackColor="#CCCCCC" />
                                    <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                    <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                    <WeekendDayStyle BackColor="#FFFFCC" />
                                </asp:Calendar>
                                &nbsp;
                            </td>
                        </tr>

                        <tr>
                            <td dir="rtl">מיקום האירוע:    </td>
                            <td>
                                <asp:TextBox CssClass="textboxCss" ID="EventPlaceTextBox" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td dir="rtl">כתובת האירוע:    </td>
                            <td>
                                <asp:TextBox CssClass="textboxCss" ID="EventAddressTextBox" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td dir="rtl">טלפון של מקום האירוע :    </td>
                            <td>
                                <asp:TextBox CssClass="textboxCss" ID="PhoneOf_EventPlaceTextBox" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td></td>
                        </tr>

                        <tr>
                            <td>
                                <asp:Button CssClass="buttonCss" ID="RegiaterUserToEvent" runat="server" Text="הירשם לאירוע" OnClick="RegiaterUserToEvent_Click" />
                            </td>

                        </tr>
                    </table>

                </div>


            </section>
            <!-- End Of My  Products    --->


</asp:Content>
