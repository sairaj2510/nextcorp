<%
%><%@include file="/libs/foundation/global.jsp"%><%
%><%@page session="false" %><%
%><%
	// TODO add you code here
%>
<%
String image1 = properties.get("image1","enter image"); 
String text1 = properties.get("text1","enter");
String image2 = properties.get("image2","image");
String text2 = properties.get("text2","enyter");
String image3 = properties.get("image3","image");
String text3 = properties.get("text3","enter");
%>
tasktwo
<div>
	<div>
	<a href="http://www.insight.com/en_US/about/contact-us.html?refcode=footer_ribbon">
		<span><img src="<%=image1%>"/></span>
		<span><%=text1%></span>
	</a>
	</div>
	<div>
	<a href="http://www.insight.com/en_US/help/faqs.html">
		<span><img src="<%=image2%>"/></span>
		<span><%=text2%></span>
	</a>
	</div>
	<div>
	<a href="http://www.insight.com/en_US/help.html">
		<span><img src="<%=image3%>"/></span>
		<span><%=text3%></span>
	</a>
	</div>
</div>