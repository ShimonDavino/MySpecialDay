<%@ Page Title="Confirm" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RsvpList.aspx.cs" Inherits="MSD.RsvpList" %>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2>רשימת מאשרים</h2>
    <h2>
        <asp:Literal ID="eventNameLiteral" runat="server"></asp:Literal></h2>
    <div class="row">
        <div class="col-md-8">
            <section id="loginForm">
                <div class="form-horizontal">
                    <asp:Label ID="msgLabel" runat="server" CssClass="errMsg" ForeColor="#FF3300"></asp:Label>
                    <div class="form-group">
                        <asp:GridView ID="RsvpGridView" runat="server">
                        </asp:GridView>
                    </div>
                </div>
            </section>
        </div>
        <div class="col-md-4">
        </div>
    </div>
</asp:Content>
