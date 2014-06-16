<%@ Page Title="UserProfile" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="MSD.UserProfile" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
<%--    <h3>hello <%:  GetUserName()  %></h3> <%--get.username()--%>
    <div>
    <asp:Label ID="get_UsernameLable" runat="server"></asp:Label>
    
    <p>this is your User Profile </p> 
    <li><a runat="server" href="~/EventRegistration" title="Event Registration">יצירת אירוע חדש</a></li>
    
    <p>.</p>

    </div>
    <div>
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" AutoGenerateColumns="False">
                        <Columns>
                            <asp:TemplateField HeaderText="אירועים קיימים">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("EventId") %>'  OnClick="LinkButton1_Click" Text='<%# Eval("EventId") %>'></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <%--<asp:HyperLinkField DataNavigateUrlFields="EventId" HeaderText="אירועים קיימים" />
                            <asp:BoundField DataField="EventId" HeaderText="אירועים קיימים" />--%>
                            
                        </Columns>
                        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099"></FooterStyle>

                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC"></HeaderStyle>

                        <PagerStyle HorizontalAlign="Center" BackColor="#FFFFCC" ForeColor="#330099"></PagerStyle>

                        <RowStyle BackColor="White" ForeColor="#330099"></RowStyle>

                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399"></SelectedRowStyle>

                        <SortedAscendingCellStyle BackColor="#FEFCEB"></SortedAscendingCellStyle>

                        <SortedAscendingHeaderStyle BackColor="#AF0101"></SortedAscendingHeaderStyle>

                        <SortedDescendingCellStyle BackColor="#F6F0C0"></SortedDescendingCellStyle>

                        <SortedDescendingHeaderStyle BackColor="#7E0000"></SortedDescendingHeaderStyle>
                    </asp:GridView>

    </div>
</asp:Content>



<%--username


hello UN--%>