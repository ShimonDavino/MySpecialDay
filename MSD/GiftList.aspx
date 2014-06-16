<%@ Page Title="Confirm" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GiftList.aspx.cs" Inherits="MSD.GiftList" %>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2>רשימת מתנות</h2>
    <h2>
        <asp:Literal ID="eventNameLiteral" runat="server"></asp:Literal></h2>
    <div class="row">
        <div class="col-md-8">
            <section id="GiftForm">
                <div class="form-horizontal">
                    <asp:Label ID="msgLabel" runat="server" CssClass="errMsg" ForeColor="#FF3300"></asp:Label>
                    
                </div>
            </section>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="GiftNameTextBox" CssClass="col-md-2 control-label">תיאור המתנה</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="GiftNameTextBox" CssClass="form-control" />
                <%--<asp:RequiredFieldValidator runat="server" ControlToValidate="GiftNameTextBox"
                                CssClass="text-danger" ErrorMessage="The user name field is required." />--%>
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="AmountTextBox" CssClass="col-md-2 control-label">כמות רצויה</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="AmountTextBox" CssClass="form-control" />
                <%--<asp:RequiredFieldValidator runat="server" ControlToValidate="AmountTextBox" CssClass="text-danger" ErrorMessage="The password field is required." />--%>
            </div>
            <asp:Label ID="Label1" runat="server" CssClass="errMsg" ForeColor="#FF3300"></asp:Label>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" ID="AddGiftButton" Text="הוספת מתנה" CssClass="btn btn-default" OnClick="AddGiftButton_Click" />
            </div>
            <br />
        </div>
        <div class="col-md-4">
            <asp:GridView ID="GiftGridView" runat="server">
            </asp:GridView>
        </div>
        <div>
            <a ID="backProfilePageLink" runat="server">חזרה לדף האירוע</a>
        </div>

    </div>
</asp:Content>
