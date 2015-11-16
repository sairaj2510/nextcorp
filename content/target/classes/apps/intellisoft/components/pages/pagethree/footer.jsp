<%--

 Footer Component. 

  

--%><%
%><%@include file="/libs/foundation/global.jsp"%><%
%><%@page session="false" %><%
%><%
    
    String para = properties.get("para","");
    String head = properties.get("head","");
    String pageheading = properties.get("pageheading","");
	
	String description = properties.get("description",""); 
	String header = properties.get("header","");
%> 

<cq:include path="connectus" resourceType="myproject/components/connectus"/>




<div class="row margin_zero" id="footer_bg">
    <div class="container">
     <div class="row margin_zero margin_top_twenty">
    <cq:include path="footeraboutus" resourceType="myproject/components/footeraboutus"/>
 <cq:include path="socialmedia" resourceType="myproject/components/socialmedia"/>
 <cq:include path="contactus" resourceType="intellisoft/components/common/contactus"/>
</div>
<div class="row margin_zero margin_top_twenty padding_bottom_fifteen text-center">Copyright ©2015 intellisoft.com All rights reserved. &nbsp;<a href="javascript:void(0);" onclick="window.open('https://www.sitelock.com/verify.php?site=intellisoftte
ch.com','SiteLock','width=600,height=600,left=160,top=170');"><img alt="Website security" title="1&amp;1 SiteLock" src="https://shield.sitelock.com/shield/intellisofttech.com"></a>

</div>
<footer id="colophon" class="site-footer" role="contentinfo">
    <!-- <div class="site-info">
               <a href="" title=""></a>
    </div>-->
    <!-- .site-info -->
</footer>
<!-- #colophon -->
</div>
<!--End Container-->
</div>