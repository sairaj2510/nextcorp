<%--

  Form Details component.

  form details

--%><%
%><%@include file="/libs/foundation/global.jsp"%><%
%><%@page session="false" %><%
%><%@page import="com.day.cq.wcm.foundation.Image,
				org.apache.sling.api.resource.ResourceResolver,
				com.day.cq.wcm.api.Page,
				com.day.cq.dam.api.Asset"%>
<h2>This are the details of ${properties.FirstName} ${properties.LastName}</h2>
<div>First Name : ${properties.FirstName}</div>
<div>Last Name : ${properties.LastName}</div>
<div>Company : ${properties.Company}</div>
<div>Email : ${properties.Email}</div>
<div>Phone : ${properties.Phone}</div>