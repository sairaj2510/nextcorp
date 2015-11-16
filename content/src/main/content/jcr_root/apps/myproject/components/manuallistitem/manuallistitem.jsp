<%--

  Manual List Item component.

  list item component

--%><%
%><%@include file="/libs/foundation/global.jsp"%><%
%><%@page session="false" %><%
%>
<cq:includeClientLib categories="apps.manuallist"/>
<%
String headline = properties.get("headline","Please enter a Headline ");
String previewtext = properties.get("previewtext","Please enter a preview text");
String contentlinklabel = properties.get("contentlinklabel","");
String contentlink = properties.get("contentlink","");
String checkbox = properties.get("checkbox","");
String imagealttext = properties.get("imagealttext","more");
String image = properties.get("image","");
%>
<div class="container">
  <div class="box margin">	
    <div class="image"><img src="<%=image%>"/></div>
    <div class="text">
        <h1 class="heading"><%=headline%></h1>
        <p class="para"><%=previewtext%></p>
        <div class="button"><%=imagealttext%></div>
    </div>
   </div>
</div>
<div class="clear"></div>