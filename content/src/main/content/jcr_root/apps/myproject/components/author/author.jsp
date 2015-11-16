<%--

  author component.

  

--%><%
%><%@include file="/libs/foundation/global.jsp"%><%
%><%@page session="false" %><%
%><%
	// TODO add you code here
%>
<cq:includeClientLib categories="apps.author"/>

<% 
String image = properties.get("image","enter the image path");
String name = properties.get("name","enter name here");
String title = properties.get("title","enter title here");
%>



<div class="authors">
    <div class="author">
        <img src="<%=image%>">	        
        	<span class="name"> 
               <b> <%=name%> </b>
		   </span>  
           <span class="title"> 
                <%=title%>
           </span>
    </div>
</div>