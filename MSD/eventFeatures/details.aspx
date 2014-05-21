<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="details.aspx.cs" Inherits="MSD.eventFeatures.details" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" >
    
    <h2 dir="rtl">פרטים לגבי האירוע</h2>
    <div class="row" dir="rtl">
    <h3></h3>
   <%-- <address>
        
    </address>

    <address>
        <strong>מצאת תקלה?</strong>   <a href="mailto:Support@example.com">שלח לנו מייל</a><br />
        <strong>לאנשי שיווק ומפרסמים:</strong> <a href="mailto:asssafbt@gmail.com">שלחו מייל לכאן</a>
    </address>--%>
        הפרטים שלנו:
<asp:TextBox id="tb5" rows="5" TextMode="multiline" runat="server" />
<br><br>
        <form action="demo_form.asp">
First name: <input type="text" name="FirstName" value="Mickey"><br>
Last name: <input type="text" name="LastName" value="Mouse"><br>
<input type="submit" value="Submit">
</form>

<p>Click the "Submit" button and the form-data will be sent to a page on the server called "demo_form.asp".</p>

        </div>
</asp:Content>
