<%@ Page Title="blessing" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="blessing.aspx.cs" Inherits="MSD.blessing" %>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2>העלאת ברכה מעוצבת </h2>
    <h2><asp:Literal ID="eventNameLiteral" runat="server"></asp:Literal></h2>
    <div class="row">
        <div class="col-md-8">
            <section id="loginForm">
                <div class="form-horizontal">
                    <h4> </h4>
                    <asp:Label ID="msgLabel" runat="server" CssClass="errMsg" ForeColor="#FF3300"></asp:Label>
                    <hr />
                      <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>
                       <p></p>
                    <div style="font-family: Arial">
             <%--<asp:FileUpload ID="fileuploadExcel" runat="server" />--%>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:Button ID="Button1" runat="server" Text="upload" onclick="Button1_Click" />

                    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" AutoGenerateColumns="False">
                        <Columns>
                            <asp:TemplateField HeaderText="שם הקובץ">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("File") %>' CommandName="Download" OnClick="LinkButton1_Click" Text='<%# Eval("File") %>'></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="Size" HeaderText="גודל הקובץ" />
                            <asp:BoundField DataField="Type" HeaderText="סוג הקובץ" />
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
                    </div>
                </section>
          
                    
                </div>
                <p>
                    
                </p>
               
            
            
        </div>

        <div class="col-md-4">
            
        </div>
    
</asp:Content>