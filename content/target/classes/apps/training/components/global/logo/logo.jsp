<%--

  Training Logo component.

  Logo Component for Training project

--%><%
%><%@include file="/libs/foundation/global.jsp"%><%
%><%@page session="false" %><%
%><%@ page import="com.day.text.Text,
	com.day.cq.wcm.foundation.Image,
	com.day.cq.commons.Doctype"%><%
	String home = Text.getAbsoluteParent(currentPage.getPath(),2);
	Resource res = currentStyle.getDefiningResource("fileReference");
if(res == null){
		res = currentStyle.getDefiningResource("file");
	}
log.error("path is:" + currentStyle.getPath());
%><a href="<%=home%>.html"><%
if (res == null){
	%>Home Page Placeholder<%
} 
else 
{
	Image img = new Image(res);
	img.setItemName(Image.NN_FILE, "file");
	img.setItemName(Image.PN_REFERENCE, "fileReference");
	img.setSelector("img");
	img.setDoctype(Doctype.fromRequest(request));
	img.setAlt("Home Page Placeholder");
	img.draw(out);
}
%></a>