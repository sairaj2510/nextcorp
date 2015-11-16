<%--

  author component.

  

--%><%
%><%@include file="/libs/foundation/global.jsp"%><%
%><%@page session="false" %><%
%><%
%><%@ page import="com.day.cq.wcm.foundation.Image,
					org.apache.sling.api.resource.ResourceResolver,
					com.day.cq.wcm.api.Page,
					com.day.cq.dam.api.Asset  " %><%	
%>
<cq:includeClientLib categories=""/>

<% 
String path = properties.get("path","enter the path");
Resource imgResource = resourceResolver.resolve(path);
Page page = r.adaptTo(Page.class);
Resource f = p.getContentResource("image");
Resource w= f.getChild("file");
Image image = new Image(w);
image.setSelector(".jpg");
String z = f.getPath() + "/file.jpg";
image.draw(out);
%>
<%=r%><br/>
<%=p %><br/>
<%=f %><br/>
<%=z %><br/>
<%=w %>
<img src="<%=z %>"/>

