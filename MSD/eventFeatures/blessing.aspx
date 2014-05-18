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
             <asp:FileUpload ID="fileuploadExcel" runat="server" />
            <asp:Button ID="Button1" runat="server" Text="upload" onclick="Button1_Click" />

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