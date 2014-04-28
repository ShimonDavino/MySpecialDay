<%@ Page Title="EventProfile" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EventProfile111.aspx.cs" Inherits="MSD.EventProfile" %>

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
    <asp:Label ID="lblEventUser" Text="ברוך הבא לדף האירוע שלך" runat="server" Font-Size="Large" Font-Bold="True"  /><br /><br /><br />
    <form  id="ceateEvent" method="post" action="main.aspx"  style="background-color:azure">
    <div class="row">
      <div class="col-md-4">
        <table border="2" >
            <tr style="height:400px">
                <td>
                    <asp:Image runat="server" ImageUrl="http://i1374.photobucket.com/albums/ag414/assafbt/wedding_zps0698efb7.jpg"
                        AlternateText="Event Image" ID="imgEvent" />
                     <%--<img src="/Content/Img/wedding.jpg> --%>
                </td>
                <td>
                    <table>


                    </table>

                </td>
            </tr>
        </table>
    </form>
 
    <!-- Socials Sharing Start -->
    <%--
<!-- Facebook -->
<div id="fb-root"></div>
<script type="text/javascript">
    var facecookAppId = 179999395438522;
    (function (d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/he_IL/all.js#xfbml=1&appId=" + facecookAppId;
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));
</script>

<!-- Google +1 -->
<script type="text/javascript">
    (function () {
        var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
        po.src = 'https://apis.google.com/js/plusone.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
    })();
</script>
<script type="text/javascript">
    window.___gcfg = {
        lang: 'he-IL',
        parsetags: 'onload'
    };
</script>
    --%>
    <%-- nerdDinner SHARING manual link --%>  


<%--
    
    <div dir="ltr" id="share">
	    	<strong>Share: </strong><a href="http://twitter.com/home/?source=nerddinner&status=Nerd+Dinner%3A+sweet sixteen +on+Dec 01+-+RSVP%3A+http%3A%2F%2Fnrddnr.com/6610"  
		title="Tweet this" target="_blank">
			<img src="/Content/Img/icon-twitter.png" alt="Twitter" border="0" />
		</a><a href="http://www.facebook.com/share.php?u=http%3A%2F%2Fnrddnr.com/6610"  
		title="Add to Facebook" target="_blank">
			<img src="/Content/Img/icon-facebook.png" alt="Facebook" border="0" />
		</a><a href="http://www.google.com/reader/link?url=http%3A%2F%2Fnrddnr.com/6610&amp;title=Nerd+Dinner%3A+sweet sixteen +on+Dec 01, 2014&amp;snippetplease come for sweet sixteen +%3Cbr+%2F%3E%0D%0A%3Cbr+%2F%3E%3Cbr+%2F%3E%3Cstrong%3EWhere%3F%3C%2Fstrong%3E%3Cbr+%2F%3E705 phesant run 08536 plainsboro NJ%3C%2Fstrong%3E%3Cbr+%2F%3E%3Cbr+%2F%3E%0D%0A%09%09%09%3Cstrong%3EWhen%3F%3C%2Fstrong%3E%3Cbr+%2F%3E%3Cstrong%3EDec 01, 2014%3C%2Fstrong%3E%3Cbr+%2F%3E%3Ca+href%3D%22http%3A%2F%2Fnrddnr.com/6610%22++title%3D%22RSVP+here%21%22+%3ERSVP+here%21%3C%2Fa%3E&amp;srcURL=http%3A%2F%2Fnrddnr.com/6610&amp;srcTitle=Twtvite"  title="Add to Google Buzz" target="_blank">
			<img src="/Content/Img/icon-google.png" alt="Google Buzz" border="0" />
		</a>
		<input name="share_link" type="text" value="לתקן את הקישור" class="widget" onclick="this.select()" size="15"/>
	</div>

    </div>
--%>

    <%-- Walla SHARING auto link --%>
   
    </style><div class="wp-0-b shr" style="" dir="ltr>
		<div class="sep shareSepTop" style="margin-bottom:6px;"></div><div class="left sright5">
			<span class="in_blk w2" style="height: 24px; zoom:1; overflow: hidden;"><script type="text/javascript"> window.Fusion.space("print"); </script></span>
			<a class="in_blk w2" style="width: 29px; height: 24px; background: url('http://isc.wcdn.co.il/w9/v/item/printHpN.jpg') no-repeat;" href="http://events.walla.co.il/WidgetEvent.asp?l=walla.sports.&event_type=1&DIvName=PrintVer&page_location=5&geo=IL&un=&url=http://sports.walla.co.il/^w*/151/2740149/@@/item/printer" title="גירסה להדפסה"></a>
		</div><div class="right sleft zoom1" style="">
			<a class="in_blk va_top pd_t4" href="javascript:void(0);" onclick="postToFeed();this.href='http://www.facebook.com/sharer.php?u=&rand='+Math.round(Math.random()*10000);Evt(this,2,'facebook',5,'facebook_share_btn',1);this.href='javascript:void(0);';return false;" >
		<img src="http://isc.wcdn.co.il/w9/v/items2012/item/btn-share-item.gif" alt="פייסבוק" />
	</a><span class="in_blk va_top vsep2"></span><span class="in_blk va_top pd_t4 plus"><script type="text/javascript" src="http://apis.google.com/js/plusone.js">{lang: 'iw'}</script><g:plusone count="false" ></g:plusone></span><span class="in_blk va_top vsep2"></span><a class="in_blk va_top pd_t4" href="javascript:void(0);" onclick="if(typeof(canonicalUrl)=='undefined'){canonicalUrl=window.location.href;}window.open('http://twitter.com/share?url='+canonicalUrl+'&amp;via=wallasport&amp;text='+encodeURIComponent(document.title.substring(0,134-canonicalUrl.length)+'...\n'),'wallapoptwit','width=635,height=346,status=no,toolbar=no,menubar=no,location=no');this.href='http://twitter.com/home?status=&rand='+Math.round(Math.random()*10000);Evt(this,1,'twitter',5,'twitter_share_btn',1);this.href='javascript:void(0);';return false;" >
		<img src="http://isc.wcdn.co.il/w9/v/items2012/item/twitter.gif?1" alt="טוויטר" />
	</a>
			<span class="in_blk va_top vsep2"></span>
			<a class="in_blk small_mail w2" href="javascript:void(0);" onclick="close_after_send();openEmail();document.getElementById('PrinterDiv').scrollIntoView();Evt(this,2,'email',5,'email_share_btn',1);return false;" title="שלח לחבר"></a>
		</div><span class="wcflow"></span><div class="sep shareSepBottom" style="margin-top:5px;"></div>

    
<%-- Ynet SHARING manual link --%>
<%-- <P>&nbsp;</P>
        </span><P>&nbsp;</P>
        </div><span class=art_credit_special></span></div></div>
    <div class='element B3 ghcite noBottomPadding' dir="rtl">
        <div id='articlebottomsharinglinks' class='articlebottomsharinglinks'>
        <div class='articlebottomsharinglinks_right_links'><a href="javascript:openInnewWindow('/novgnpre/Ext/Comp/ArticleLayout/CdaArticleSendtoForm1024/1,14439,L-4512751,00.html',525,480,0);" class='bottomsharinglinks_textIconLink'>
            <span class='sprite_article_asb_send_tofriend_icon bottomsharinglinks_spriteIcon bottomsharinglinks_sendArticle'></span><span class='bottomsharinglinks_textIcon bottomsharinglinks_sendArticle'>שלחו כתבה</span></a>
            <a href="javascript:LightBoxNewsletter.openLightBoxNewsletter();" class='bottomsharinglinks_textIconLink'>
                <span class='sprite_article_asb_newsletter bottomsharinglinks_spriteIcon bottomsharinglinks_sendArticle'></span>
                <span class='bottomsharinglinks_textIcon bottomsharinglinks_sendArticle'>הרשמה לניוזלטר</span></a>
            <a href='http://www.yedioth.co.il/Default.aspx?page=98&ref=ynet_article' class='bottomsharinglinks_textIconLink'>
                <span class='sprite_article_asb_Paper_icon bottomsharinglinks_spriteIcon bottomsharinglinks_sendArticle'></span>
                <span class='bottomsharinglinks_textIcon bottomsharinglinks_sendArticle'>עשו מנוי לעיתון</span></a>
            <a href="javascript:;" onclick="window.open('http://www.facebook.com/sharer.php?u='+'http://www.ynet.co.il/articles/0,7340,L-4512751,00.html','ynet','width=635,height=346,scrollbars=no,status=no,toolbar=no,menubar=no,location=no');" class='bottomsharinglinks_textIconLink'>
                <span class='bottomsharinglinks_textIcon'>שתף ב-</span><span class='sprite_article_asb_facebook bottomsharinglinks_spriteIcon'></span></a>
            <a href="javascript:;" onclick="window.open('http://twitter.com/share?url='+'http://www.ynet.co.il/articles/0,7340,L-4512751,00.html'+'&via=ynet&text='+encodeURIComponent(document.title)+'...%0A','ynetpoptwitter','width=635,height=346,status=no,toolbar=no,menubar=no,location=no');" class='bottomsharinglinks_textIconLink'>
                <span class='bottomsharinglinks_textIcon'>שתף ב-</span><span class='sprite_article_asb_tweeter bottomsharinglinks_spriteIcon'></span></a>
            <a href="javascript:;" onclick="window.open('https://plus.google.com/share?url=http://www.ynet.co.il/articles/0,7340,L-4512751,00.html','ynetpoptwitter','width=635,height=530,status=no,toolbar=no,menubar=no,location=no');" class='bottomsharinglinks_textIconLink'>
                <span class='bottomsharinglinks_textIcon'>שתף ב-</span><span class='sprite_article_asb_google_plus bottomsharinglinks_spriteIcon'></span></a></div></div>
        <script src='/common/api/scripts/head.load.min.js'></script>
 --%>

        <!-- Socials Sharing End -->       

    </div>   
    
    
     
 <!-- features -->
         <div class="col-md-4">
     <%-- <a class="btn btn-default" href="https://github.com/ShimonDavino/MySpecialDay/wiki/Team-page"> more &raquo;</a>--%>
         <div class="button big-btn">הסעות וטרמפים</div>
          
     </div>
    <div class="col-md-4">
       
       <div class="button big-btn"> אישורי הגעה </div>
  
    </p></div><br>
 <div class="col-md-4">
          <a class="button big-btn" runat="server" href="www.google.com">הודעות וטיפים</a>
         
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
