<%@ Page Title="Log in" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MSD.Account.Login" Async="true" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2>כניסת משתמש</h2>

    <div class="row">
        <div class="col-md-8">
            <section id="loginForm">
                <div class="form-horizontal">
                    <h4> </h4>
                    <hr />
                      <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="UserNameTextBox" CssClass="col-md-2 control-label">שם משתמש</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="UserNameTextBox" CssClass="form-control"  />  
                            <%--<asp:RequiredFieldValidator runat="server" ControlToValidate="UserNameTextBox"
                                CssClass="text-danger" ErrorMessage="The user name field is required." />--%>
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="PasswordTextBox" CssClass="col-md-2 control-label">סיסמה</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="PasswordTextBox" TextMode="Password" CssClass="form-control" />
                            <%--<asp:RequiredFieldValidator runat="server" ControlToValidate="PasswordTextBox" CssClass="text-danger" ErrorMessage="The password field is required." />--%>
                        </div>
                        <asp:Label ID="msgLabel" runat="server" CssClass="errMsg"></asp:Label>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <div class="checkbox">
                                <asp:CheckBox runat="server" ID="RememberMe" />
                                <asp:Label runat="server" AssociatedControlID="RememberMe">Remember me?</asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <asp:Button runat="server" ID="LogInUser" OnClick="LogIn" Text="Log in" CssClass="btn btn-default" />
                        </div>
                      <br />
                        
                    </div>
                    
                </div>
                <p>
                    
                </p>
                <p>
                    <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">בצע רישום</asp:HyperLink>
                    במידה ואין לך שם משתמש
                </p>
            </section>
            
        </div>

        <div class="col-md-4">
            
        </div>
    </div>
</asp:Content>
