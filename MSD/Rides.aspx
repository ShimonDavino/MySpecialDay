<%@ Page Title="Confirm" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Rides.aspx.cs" Inherits="MSD.Rides" %>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="row">
    <p class="text_3D" align="right" dir="rtl">הסעות וטרמפים לאירוע של :    
             <asp:Label ID="EventOwnerNameLable" runat="server" Text="Label">user name</asp:Label>
         </p>
    <h2> </h2>
       
    
        <div class="col-md-8">
            <section id="GiftForm">
                <div class="form-horizontal">
                    <asp:Label ID="msgLabel" runat="server" CssClass="errMsg" ForeColor="#FF3300"></asp:Label>
                    
                </div>
            </section>
        </div>
        </div>
        <div class="row">
        <div class="form-group">

                <asp:TextBox ID="RidesTextBox" runat="server" Height="200px" Width="600px" AutoPostBack="True" ReadOnly="True" TextMode="MultiLine" ></asp:TextBox>
        </div>
            </div>
    <div class="row">
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="FromTextBox" CssClass="col-md-2 control-label">מאת:</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="FromTextBox" CssClass="form-control" />
                <%--<asp:RequiredFieldValidator runat="server" ControlToValidate="GiftNameTextBox"
                                CssClass="text-danger" ErrorMessage="The user name field is required." />--%>
            </div>
        </div>
        <div class="form-group" dir="rtl">
            <asp:Label runat="server" AssociatedControlID="ContentTextBox" CssClass="col-md-2 control-label">תוכן:</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="ContentTextBox" CssClass="form-control" />
                <%--<asp:RequiredFieldValidator runat="server" ControlToValidate="AmountTextBox" CssClass="text-danger" ErrorMessage="The password field is required." />--%>
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" ID="AddMessageButton" Text="הוספת הודעה" CssClass="btn btn-default" OnClick="AddMessageButton_Click" />
            </div>
            <br />
        </div>
        </div>
        <p></p>
        <div class="row">
        <div dir="ltr">
            <a ID="backProfilePageLink" runat="server">חזרה לדף האירוע</a>
        </div>

    </div>
</asp:Content>
