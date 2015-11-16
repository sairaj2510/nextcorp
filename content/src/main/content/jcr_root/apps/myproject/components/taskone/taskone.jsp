<%--

  Hero component.

  

--%><%
%><%@include file="/libs/foundation/global.jsp"%><%
%><%@page session="false" %><%
%><%
	// TODO add you code here
%>
<cq:includeClientLib categories="apps.mytaskone"/>

<% 
String head = properties.get("head","");
String text1 = properties.get("text1","");
String text2 = properties.get("text2","");
String text3 = properties.get("text3","");
String image = properties.get("image","enter the image path");
%>



<div>
<div class= "box">    
<div class="column" >
<img class="circle" src="<%=image%>"> 
</div>
<div class="column">
<h3><%=head%></h3>
    <div class= "list">
<ul>
<li><%=text1%></li>
<li><%=text2%></li>
<li><%=text3%></li>
</ul>
    </div>
<a href="http://www.insight.com/en_US/home.html" class="myButton">Learn More</a>
</div>
    </div>
 <div class="clear"><div>
</div>

