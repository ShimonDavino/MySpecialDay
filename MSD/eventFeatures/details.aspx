<%@ Page Title="details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="details.aspx.cs" Inherits="MSD.eventFeatures.details" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" >
    
    <h2 dir="rtl">פרטי האירוע</h2>
    <div class="row" dir="rtl">
    <h3></h3>
  
        הפרטים שלנו:
<%--<asp:TextBox id=MessagesTextBox rows="5" TextMode="multiline" runat="server" dir="rtl"></asp:TextBox>--%>
        </div>
    <div dir="rtl">
         <h2><asp:Literal ID="eventNameLiteral" runat="server"></asp:Literal></h2>
    <div class="row">
        <div class="col-md-8">
            <section id="GiftForm">
                <div class="form-horizontal">
                    <asp:Label ID="msgLabel" runat="server" CssClass="errMsg" ForeColor="#FF3300"></asp:Label>
                    
                </div>
            </section>
        </div>
        <div class="form-group">

                <asp:TextBox ID="DetailsTextBox" runat="server" Height="200px" Width="600px" AutoPostBack="True" ReadOnly="True" TextMode="MultiLine" ></asp:TextBox>
        </div>
        <div class="form-group">
            
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="FromTextBox" CssClass="form-control" />

                 </div>
            <asp:Label runat="server" AssociatedControlID="FromTextBox" CssClass="col-md-2 control-label">שם האולם:</asp:Label>
        </div>
        <div class="form-group">
            
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="ContentTextBox" CssClass="form-control" />

                     </div>
            <asp:Label runat="server" AssociatedControlID="ContentTextBox" CssClass="col-md-2 control-label">פרטים נוספים:</asp:Label>
         </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" ID="AddDetailsButton" Text="הוספת הודעה" CssClass="btn btn-default" OnClick="AddDetailsButton_Click" />
                    </div>

<br><br>
      <%--  <form action="demo_form.asp">
First name: <input type="text" name="FirstName" value="Mickey"><br>
Last name: <input type="text" name="LastName" value="Mouse"><br>
<input type="submit" value="Submit">
</form>

<p>Click the "Submit" button and the form-data will be sent to a page on the server called "demo_form.asp".</p>--%>

        </div>
        </div>
        </div>
</asp:Content>
