<%--

 Social Media Component.

  

--%><%
%><%@include file="/libs/foundation/global.jsp"%><%
%><%@page session="false" %><%
%><%
	String pageheading = properties.get("pageheading","head");
	String facebookimg = properties.get("facebookimg","facebook");
	String twitterimg = properties.get("twitterimg","twitter");
	String googleimg = properties.get("googleimg","google");
	String linkedimg = properties.get("linkedimg","linkedin");
%> 

<div class="col-md-4 col-sm-4 col-xs-12">
  <h3><%=pageheading%></h3>  
<div class="row margin_zero social_media">
        <ul>
            <li class="facebook_footer_icon"><a href="javascript:void(0);"><img src="<%=facebookimg%>"</a>
            </li>
            <li class="twitter_footer_icon"><a href="javascript:void(0);"><img src="<%=twitterimg%>"</a>
            </li>
            <li class="google_plus_footer_icon"><a href="javascript:void(0);"><img src="<%=googleimg%>"</a>
            </li>
            <li class="linkedin_footer_icon"><a href="javascript:void(0);"><img src="<%=linkedimg%>"</a>
            </li>
        </ul>
    </div>

</div>