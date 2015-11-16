<%--

  Hero component.

  

--%><%
%><%@include file="/libs/foundation/global.jsp"%><%
%><%@page session="false" %><%
%><%
	// TODO add you code here
%>
<% String text1 = properties.get("text1","Enter text");
String text2 = properties.get("text2","Enter text");
String text3 = properties.get("text3","Enter text");
String image = properties.get("image","enter the image path");
%>

<img src="<%=image%>"> 
<!-- /hero -->
<div class="content">
    
    <div class="hero">
      <div class="text">
      </div>
      <div class="promo">
      </div>
    </div>
  </div> 