<%--

  Top Navigation component.



--%><%@include file="/libs/foundation/global.jsp" %>
<%@ taglib prefix="wcmmode" uri="http://www.adobe.com/consulting/acs-aem-commons/wcmmode" %><%
%><%@ taglib prefix="widgets" uri="http://www.adobe.com/consulting/acs-aem-commons/widgets" %><%
%><%@ taglib prefix="xss" uri="http://www.adobe.com/consulting/acs-aem-commons/xss" %><%
%><%@ taglib prefix="wcm" uri="http://www.adobe.com/consulting/acs-aem-commons/wcm" %>

<% String title = properties.get("mainmenutitle","Enter title");
String link = properties.get("link"," Enter link");
%>
<c:set var="definitions" value="${widgets:getMultiFieldPanelValues(resource, 'definitions')}"/>
<c:choose>
    <c:when test="${empty definitions}">
        <wcm:placeholder classNames="cq-dl-placeholder cq-block-placeholder"/>
    </c:when>
    <c:otherwise>
        <li class="has-submenu">
        <a href="<%=link%>"><%=title%> <i class="fa fa-chevron-right"></i></a>
        <div class="sub-menu">
          <ul>
                <c:forEach items="${definitions}" var="definition">
                    <li><a href="${xss:encodeForHTML(xssAPI, definition['definition'])}">${xss:encodeForHTML(xssAPI, definition['term'])}</a></li>

                </c:forEach>
       		</ul>
        </div>
      </li>
    </c:otherwise>
</c:choose>



