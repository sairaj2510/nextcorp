<%--

  Training Image Component component.

  Simple Image Component

--%><%
%><%@include file="/libs/foundation/global.jsp"%><%
%><%@page session="false" %><%
%><%@ page import="com.day.cq.wcm.foundation.Image"%><%
%><%
Image image = new Image(resource);
image.setSelector(".img");
image.draw(out);
%><br>