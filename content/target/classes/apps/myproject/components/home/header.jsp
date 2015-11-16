<%@page session="false"%><%--
  Copyright 1997-2011 Day Management AG
  Barfuesserplatz 6, 4001 Basel, Switzerland
  All Rights Reserved.

  This software is the confidential and proprietary information of
  Day Management AG, ("Confidential Information"). You shall not
  disclose such Confidential Information and shall use it only in
  accordance with the terms of the license agreement you entered into
  with Day.

  ==============================================================================

  Header script.

  Draws the top header and shows an example of how to include a cacheable
  navigation by using a script include. see page/topnav.jsp for more details.
  Note that the topnav script is included as .html so that it is flushed on the
  dispatcher on invalidation requests.

  ==============================================================================

--%><%@ page import="com.day.cq.commons.Doctype, com.day.cq.i18n.I18n, com.day.text.Text" %><%
%><%@include file="/libs/foundation/global.jsp" %> 
<div class="col-md-2 col-sm-2 col-xs-4 padding_left_zero">
<a class="home-link" href="http://localhost:4502/cf#/cf#/content/intellisofthomepage.html" title="" rel="home">
<img class="img-responsive" src="http://www.intellisofttech.com/wp-content/themes/intellisoft/images/logo.png" alt="" border="0"></a>
</div>
<div class="col-md-8 col-sm-8 col-xs-8"><cq:include path="topnavigation" resourceType="intellisoft/components/common/topnavigation"/></div>
<div class="col-md-2 col-sm-2 col-xs-2">
        <a href="http://www.orionox.com/employee_portal/" target="_blank" type="button" class="btn-login">Login</a></div>
<div class="clear"></div>
