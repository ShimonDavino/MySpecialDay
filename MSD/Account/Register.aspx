<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="MSD.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %>.</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <h4>יצירת משתמש</h4>
        <hr />
        <%--<asp:ValidationSummary runat="server" CssClass="text-danger" />--%>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="UserNameTextBox" CssClass="col-md-2 control-label">שם משתמש</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="UserNameTextBox" CssClass="form-control" BorderStyle="Solid" MaxLength="10" ToolTip="הכנס שם משתמש עד 10 אותיות וספרות " />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserNameTextBox"
                    CssClass="text-danger" ErrorMessage="The user name field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="PasswordTextBox" CssClass="col-md-2 control-label">סיסמה</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="PasswordTextBox" TextMode="Password" CssClass="form-control" BorderStyle="Solid" MaxLength="10" ToolTip="הכנס סיסמה עד 10 ספרות" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="PasswordTextBox"
                    CssClass="text-danger" ErrorMessage="The password field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">אישור סיסמה</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" BorderStyle="Solid" MaxLength="9" ToolTip="אשר את הסיסמה שהכנסת קודם לכן " />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                <asp:CompareValidator runat="server" ControlToCompare="PasswordTextBox" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" ID="CreateUserButton" OnClick="CreateUser_Click" Text="רישום" CssClass="btn btn-default" />
            </div>
        </div>
        <br />
        <asp:Label ID="RegisterError" runat="server" Font-Bold="True" ForeColor="Maroon"></asp:Label>
    </div>
</asp:Content>
