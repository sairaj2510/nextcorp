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
<div class="col-md-4 col-sm-4 col-xs-12">
    
<h3><%=header%></h3>

    <div class="row margin_zero contact_detils">
        <ul>
            <li><span class="pull-left glyphicon glyphicon-map-marker" aria-hidden="true"></span>
                <p>1320 Greenway drive STE 460
                    <br>Irving Texas – 75038</p>
            </li>
            <li><span class="pull-left glyphicon glyphicon-earphone" aria-hidden="true"></span><a href="tel:9727561212">9727561212</a>

            </li>
            <li><span class="pull-left glyphicon glyphicon-print" aria-hidden="true"></span><a href="tel:9727537856 ">9727537856</a>

            </li>
            <li><span class="pull-left glyphicon glyphicon-earphone" aria-hidden="true"></span><a href="tel:1-888-456-3363">Toll Free: 1-888-456-3363</a>

            </li>
            <li><span class="pull-left glyphicon glyphicon-envelope" aria-hidden="true"></span><a href="mailto:info@intellisofttech.com" style="text-decoration:underline;">info@intellisofttech.com</a>

            </li>
        </ul>
    </div>
</div>
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