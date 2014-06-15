<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="MSD.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2 dir="rtl">אודות<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" OnSelectionChanged="Calendar1_SelectionChanged" Width="200px">
            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
            <NextPrevStyle VerticalAlign="Bottom" />
            <OtherMonthDayStyle ForeColor="#808080" />
            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
            <SelectorStyle BackColor="#CCCCCC" />
            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
            <WeekendDayStyle BackColor="#FFFFCC" />
        </asp:Calendar>
    </h2>
   <div class="row" dir="rtl"
    <a href="EventProfile.aspx"></a>
    <a href="EventProfile.aspx">אירוע לדוגמא</a>
    </div>
   <div class="row">
     <div dir="rtl" class="col-md-4">
            <h2>על הקורס</h2>
            <p>
                
                הפרוייקט הוא חלק מקורס הנלמד במכללה האקדמית להנדסה בירושלים (JCE) </p>
            <a href="https://github.com/jce-il/se-class/wiki" class="btn btn-primary btn-large">Link &raquo;</a></p>
                                
            </p>
            <p>
                 
                          

            </p>
            
        </div>
        <div dir="rtl" class="col-md-4">
            <h2>מי אנחנו?</h2>
            <p>
                
                 <a href="https://github.com/assafbt">Assaf Biton</a></br>
                 <a href="https://github.com/leacohen">Lea Cohen Sabba</a></br>
                 <a href="https://github.com/ShimonDavino">Shimon Davino</a></br>
                 <a href="https://github.com/shaul58">Shaul Vachnun</a></br>
                 <a href="https://github.com/israelrania">Israel Rania</a></br>
            </p>
        </div>
   

         <div dir="rtl" class="col-md-4">
            <h2> כמה מילים על הפרוייקט</h2>
            <p>
            הרעיון של הפרוייקט שלנו הוא לפשט ולהקל את ארגון האירוע הן לבעלי האירוע והן למוזמנים מצד אחד. מצד שני לייצר מתנות ומזכרות יפות ושימושיות  לבעלי האירוע  לאחר סיום האירוע. </p>
            
            </p>

            <p>                
                <p>קישור לקבצי הפרוייקט שלנו </p>
                <a href="https://github.com/ShimonDavino/MySpecialDay" class="btn btn-primary btn-large">GitHub &raquo;</a></p>
            </p>
        </div>
    </div>

</asp:Content>
