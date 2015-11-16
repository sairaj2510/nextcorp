<%--

  Training Top Navigation Component component.

  Top Navigation for the Training project

--%><%
%><%@include file="/libs/foundation/global.jsp"%><%
%><%@page session="false" %><%
%><%@ page import="java.util.Iterator,
com.day.text.Text,
com.day.cq.wcm.api.PageFilter,
com.day.cq.wcm.api.Page,
com.day.cq.commons.Doctype,
org.apache.commons.lang3.StringEscapeUtils"%><%
//get navigation root path page
Page navRootPage = currentPage.getAbsoluteParent(2);
//check to make sure the page exists
if(navRootPage == null && currentPage != null){
	navRootPage = currentPage;
}
if (navRootPage != null) {
   Iterator<Page> children = navRootPage.listChildren(new PageFilter(request));
%><ul><%
	while (children.hasNext()){
		Page child = children.next();
%>
		<li>
			<a href="<%=child.getPath() %>.html">
			<%=StringEscapeUtils.escapeXml(child.getTitle()) %></a>
		</li>
<%
	}
%></ul><%
}
%>	
        