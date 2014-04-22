<%@ Page Title="EventProfile" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EventProfile.aspx.cs" Inherits="MSD.EventProfile" %>

<%--sdfsdf --%>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

        
    <style type="text/css">
        .selectDefualtOp {
            display: none;
            width:200px;
            color: gray;
        }
        h1
        {
            color:blue;
        }

        input
        {
            width:200px;
        }
    </style>
    <h1>Creat Event Registration page </h1><br />
    <form  id="ceateEvent" method="post" action="main.aspx"  style="background-color:azure">
    <div class="row">
      <div class="col-md-4">
        <table border="2" >
            <tr style="height:400px">
                <td>
                    <img src="http://i1374.photobucket.com/albums/ag414/assafbt/wedding_zps0698efb7.jpg">
                </td>
                <td>
                    <table>


                    </table>

                </td>
            </tr>
        </table>
    </form>

    </div>

     <div class="col-md-4">
     <%-- <a class="btn btn-default" href="https://github.com/ShimonDavino/MySpecialDay/wiki/Team-page"> more &raquo;</a>--%>
         <div class="button big-btn">הסעות וטרמפים</div>
          
     </div>
    <div class="col-md-4">
       
       <div class="button big-btn">אישורי הגעה</div>
  
    </p></div><br>
    <div class="col-md-4">
          <div class="button big-btn">הודעות וטיפים</div>
         
    </div>
    <div class="col-md-4">
         <div class="button big-btn">רשימת מתנות</div>
        
    </p></div><br>
     <div class="col-md-4">
          <div class="button big-btn">העלה סרטון ברכה</div>
         
     </div>
 <div class="col-md-4">
      <div class="button big-btn">העלה ברכה מעוצבת</div>
      
    </div></p><br>


   </asp:Content>
