<%--

  imagetext component.

  

--%><%
%><%@include file="/libs/foundation/global.jsp"%><%
%><%@page session="false" %><%
%><%
	// TODO add you code here
%>
<%
String text = properties.get("text","enter the text");
%>
<div class="txt">
    <%=text%>
    </div>
    <style>
    .txt{color:red;font-size:40px;}
    </style>