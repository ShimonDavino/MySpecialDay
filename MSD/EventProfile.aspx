﻿<%@ Page Title="EventProfile" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EventProfile.aspx.cs" Inherits="MSD.EventProfile" %>

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
        .auto-style1 {
            width: 100px;
        }
        .auto-style2 {
            width: 28px;
        }
    </style>
    <div dir="rtl" class="row">
        
    <%--<h1 > 555 </h1><br />--%>
     <asp:Label ID="EventOfNames" runat="server" Font-Size="Large" Font-Bold="True"  /><br/><br/>
    <asp:Label ID="lblEventUser" Text="ברוך הבא לדף האירוע שלך" runat="server" Font-Size="Large" Font-Bold="True"  /><br/><br/><br/>
    <form  id="ceateEvent" method="post" action="main.aspx"  style="background-color:azure">
     <div class="row"> 
      <div class="col-md-4">
        <table border="0">
            <tr style="height:400px">
                <td class="auto-style1>
                </td>
                <td class="auto-style2">
                    <table>
                        <img src="http://i1374.photobucket.com/albums/ag414/assafbt/images23_zps1e3e8c6c.jpg">
                    </table>

                </td>
            </tr>
        </table>
          </div>
    </form>

    

     <div class="col-md-4">
     
         <input class="submit" type="submit" name="name" value="הסעות וטרמפים" onclick="">
          
          
     </div>
    <div class="col-md-4">
        <input class="submit" type="submit" name="name" value="אישורי הגעה">
       
  
    </p></div><br>
    <div class="col-md-4">
       <input class="submit" type="submit" name="name" value="הודעות וטיפים">
          
         
    </div>
    <div class="col-md-4">
        <input class="submit" type="submit" name="name" value="רשימת מתנות">
        
    </p></div><br>
     <div class="col-md-4">
          <input class="submit" type="submit" name="name" value="העלה סרטון ברכה">
         
     </div>
 <div class="col-md-4">
     <input class="submit" type="submit" name="name" value="העלה ברכה מעוצבת">
      
    </div></p><br>
    </div>
    <footer>
                <p> </p>
            </footer>
        </div>
    </form>

   </asp:Content>
