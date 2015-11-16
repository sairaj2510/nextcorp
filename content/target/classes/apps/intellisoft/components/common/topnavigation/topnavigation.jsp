 <%--
  Copyright 1997-2008 Day Management AG
  Barfuesserplatz 6, 4001 Basel, Switzerland
  All Rights Reserved.

  This software is the confidential and proprietary information of
  Day Management AG, ("Confidential Information"). You shall not
  disclose such Confidential Information and shall use it only in
  accordance with the terms of the license agreement you entered into
  with Day.

  ==============================================================================

  Top Navigation component

  Draws the top navigation

--%><%@include file="/libs/foundation/global.jsp"%><%
%><%@ page import="java.util.Iterator,
        com.day.text.Text,
        com.day.cq.wcm.api.PageFilter,
        com.day.cq.wcm.api.Page,
        com.day.cq.commons.Doctype,
        org.apache.commons.lang3.StringEscapeUtils" %><%
    // get starting point of navigation
    long absParent = currentStyle.get("absParent", 2L);

    String navstart = Text.getAbsoluteParent(currentPage.getPath(), (int) absParent);

    //if not deep enough take current node
    if (navstart.equals("")) navstart=currentPage.getPath();
  %>  

<nav class="navbar navbar-default">
  <div class="container-fluid">

 <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
  <%
    Resource rootRes = slingRequest.getResourceResolver().getResource(navstart);
    Page rootPage = rootRes == null ? null : rootRes.adaptTo(Page.class);
    String xs = Doctype.isXHTML(request) ? "/" : "";
    if (rootPage != null) {
        Iterator<Page> children = rootPage.listChildren(new PageFilter(request));
        if(children  != null)
        {
        %>
       <ul class="nav navbar-nav navbar-right">
        <%
        while (children.hasNext()) {
            Page child = children.next(); 
            int depth =  child.getDepth();
          
             Iterator<Page> childrenlevel2 = child.listChildren(new PageFilter(request));
             if(childrenlevel2.hasNext())
             {
            %>
            <li class="dropdown">
            <a href="<%= child.getPath() %>.html" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><%= StringEscapeUtils.escapeXml(child.getTitle()) %> <span class="caret"></span></a>
            <ul class="dropdown-menu" role="menu">
            <%

                 while (childrenlevel2.hasNext()) {
                    Page childlevel2 = childrenlevel2.next();
                    %>
                        <li><a href="<%= childlevel2.getPath() %>.html"><%= StringEscapeUtils.escapeXml(childlevel2.getTitle()) %> </a></li>
                    <%
                    }
            %>
            </ul>
            </li>
           
          <%

          }
          else
          {
          %>
          <li >         <a href="<%= child.getPath() %>.html" ><%= StringEscapeUtils.escapeXml(child.getTitle()) %> </a>

            </li>
          <%
          }

        }
        %>
        </ul>
        <%
        }
    }
%>
</div>
</div>
</nav>
<script>
$(document).ready(function()
{

$('.mynewid').click(function()

{
var mytext = $('.mynewid').text();
alert("old text --- "+mytext );
mytext = mytext + " addedtext";
alert("new text --- "+mytext );
$('.mynewid').text(mytext );

});

});
</script>