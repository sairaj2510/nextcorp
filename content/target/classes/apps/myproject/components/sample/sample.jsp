<%--
  Sample component.
--%><%
%><%@include file="/libs/foundation/global.jsp"%><%
%><%@page session="false" %><%
%><%
	// TODO add you code here
%>

<% 
String text=properties.get("text","Enter text: Heyaa");
%>

<style>
    .txt{
        text-align:center;
        font-size:15px !important;
  line-height: 20px !important;
  color: red !important;;}

    }

</style>


<div class="txt">
    <%= text %> 
        </div>
