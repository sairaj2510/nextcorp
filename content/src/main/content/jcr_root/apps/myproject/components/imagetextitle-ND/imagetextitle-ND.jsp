<%--

  Image Text With Title component.

  

--%><%
%><%@include file="/libs/foundation/global.jsp"%><%
%><%@page session="false" %><%
%><%
	String title = properties.get("title"," Enter the title Path");
String text = properties.get("text"," Enter text");
String image = properties.get("imagepath","Enter image path");
String link = properties.get("link","Enter image path");
%>

<style>
    .about_us {
  width: 325px;
  float: left;
  margin: 5px;
}
    h2 {
  font-family: Arial, Helvetica, sans-serif;
  font-size: 16px;
  color: #333;
  line-height: 20px;
  padding-left: 15px;
  font-weight: bold;
  padding-top: 10px;
  padding-bottom: 10px;
  display: block;
}

    p.ex{ width: 325px;}
</style>

    <div class="about_us">
    <h2 style="margin-left:0px;"><%=title%>&nbsp;&nbsp;&nbsp;</h2>
    <img src="<%=image%>" width="100" height="90" alt="About_us" style="float:left; padding-right:10px; padding-left:10px">
        <p class="ex" style="font-family:Verdana, Geneva, sans-serif; font-size:12px; padding-left:15px; padding-right:10px; margin-top:0px; margin-bottom:5px; padding-right:20px;">This is the change<%=text%>&nbsp;<br/>
        <a href="<%=link%>" class="r_more">+ Read More</a> &nbsp;&nbsp;&nbsp;</p> 
</div>