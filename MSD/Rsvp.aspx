<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rsvp.aspx.cs" Inherits="MSD.Rsvp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>אישור הגעה</h2>

        <div class="row">
            <div class="col-md-8">
                <section id="ConfirmForm">
                    <div class="form-horizontal">
                        <h4></h4>
                        <hr />
                        <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                            <p class="text-danger">
                                <asp:Literal runat="server" ID="FailureText" />
                            </p>
                        </asp:PlaceHolder>
                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="ConfirmNameTextBox" CssClass="col-md-2 control-label">שם מאשר</asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="ConfirmNameTextBox" CssClass="form-control" />
                                <%--<asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmNameTextBox"
                                CssClass="text-danger" ErrorMessage="The user name field is required." />--%>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="AmountTextBox" CssClass="col-md-2 control-label">סיסמה</asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="AmountTextBox" TextMode="Password" CssClass="form-control" />
                                <%--<asp:RequiredFieldValidator runat="server" ControlToValidate="AmountTextBox" CssClass="text-danger" ErrorMessage="The password field is required." />--%>
                            </div>
                            <asp:Label ID="msgLabel" runat="server" CssClass="errMsg"></asp:Label>
                        </div>
                        <%--   <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <div class="checkbox">
                                <asp:CheckBox runat="server" ID="RememberMe" />
                                <asp:Label runat="server" AssociatedControlID="RememberMe">Remember me?</asp:Label>
                            </div>
                        </div>
                    </div> --%>
                        <div class="form-group">
                            <div class="col-md-offset-2 col-md-10">
                                <asp:Button ID="ConfirmButton" runat="server" CssClass="btn btn-default" Text="שלום" />
                                <%-- <asp:Button runat="server" ID="ConfirmUser" OnClick="Confirm_click" Text="אישור" CssClass="btn btn-default" /> --%>
                            </div>
                            <br />

                        </div>

                    </div>
                    <p>
                    </p>
                    <%--
                <p>
                    <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">בצע רישום</asp:HyperLink>
                    במידה ואין לך שם משתמש
                </p> --%>
                </section>

            </div>

            <div class="col-md-4">
            </div>
        </div>


        <%--
        <div>
            <h1 dir="rtl">אישור הזמנה</h1>
            <asp:Label ID="LabelError" runat="server" Text=""></asp:Label>
        </div>
        <br />
        <div>
            <div>

                <asp:Label ID="LabelConfirm" runat="server" Text="שם המאשר"></asp:Label>
                <asp:TextBox ID="TextBoxConfirm" runat="server"></asp:TextBox>
                

            </div>
            <br />
            <div>

                <asp:Label ID="LabelAmount" runat="server" Text="כמות" Visible="false"></asp:Label>
                <asp:TextBox ID="TextBoxAmount" runat="server" Visible="false"></asp:TextBox>
                <asp:RangeValidator ControlToValidate="TextBoxAmount" MinimumValue="1" MaximumValue="1000" Type="Integer" Text="חייב להיות מספר שגדול מ- 0" runat="server" Font-Bold="True" ForeColor="Red" />
            </div>
        </div>
        <br/>
        <div>

            <asp:Button ID="ButtonConfirm" runat="server" Text="בצע אישור" OnClick="ButtonConfirm_Click" />

        </div>
        --%>
    </form>
</body>
</html>
