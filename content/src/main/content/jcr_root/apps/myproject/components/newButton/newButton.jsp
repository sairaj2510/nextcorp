<%--

  Button component.

  

--%><%
%><%@include file="/libs/foundation/global.jsp"%><%
%><%@page session="false" %><%
%><%
String text = properties.get("text","Enter text here");
    %>
            <button> <%=text%></button>
Sanjay Revathi Mahesan