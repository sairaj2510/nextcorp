<%--

  Hero component.

  

--%><%
%><%@include file="/libs/foundation/global.jsp"%><%
%><%@page session="false" %><%
%><%
	// TODO add you code here
%>
<cq:includeClientLib categories="designs.examcomp"/>

<% 
String head = properties.get("head","");
String text = properties.get("text","");
String image = properties.get("image","enter the image path");
%>
<div class="prod-top-section">
<a x-cq-linkchecker="skip" class="select-prod" href="/en_US/buy/product/65258094/ADOBE/65258094/Adobe-Acrobat-Pro-DC-2015/">
    <img src="<%=image%>" alt="Adobe Acrobat Pro DC 2015 "/>
<h3><%=head%></h3>
</a>
<div class="clear"></div>
<div class="richtext"><%=text%></div>
    <div class="clear"></div>
<div>
<a x-cq-linkchecker="skip" href="/en_US/buy/similar.html?materialId=65258094" class="compare-similar">Compare Similar</a>
</div>
</div>
<div class="clear"></div>