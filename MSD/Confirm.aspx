<%@ Page Title="Confirm" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Confirm.aspx.cs" Inherits="MSD.Confirm" %>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2>אישור הגעה</h2>
    <h2><asp:Literal ID="eventNameLiteral" runat="server"></asp:Literal></h2>
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
                        <asp:Label runat="server" AssociatedControlID="ConfirmNameTextBox" CssClass="col-md-2 control-label">שם מאשר</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="ConfirmNameTextBox" CssClass="form-control"  />  
                            <%--<asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmNameTextBox"
                                CssClass="text-danger" ErrorMessage="The user name field is required." />--%>
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="AmountTextBox" CssClass="col-md-2 control-label">כמות אנשים</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="AmountTextBox"  CssClass="form-control" />
                            <%--<asp:RequiredFieldValidator runat="server" ControlToValidate="AmountTextBox" CssClass="text-danger" ErrorMessage="The password field is required." />--%>
                        </div>
                        <asp:Label ID="msgLabel" runat="server" CssClass="errMsg" ForeColor="#FF3300"></asp:Label>
                    </div>
                    
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <asp:Button runat="server" ID="ConfirmButton" Text="אישור" CssClass="btn btn-default" OnClick="ConfirmButton_Click" />
                        </div>
                      <br />
                        
                    </div>
                    
                </div>
                <p>
                    
                </p>
               
            </section>
            
        </div>

        <div class="col-md-4">
            
        </div>
    </div>
</asp:Content>