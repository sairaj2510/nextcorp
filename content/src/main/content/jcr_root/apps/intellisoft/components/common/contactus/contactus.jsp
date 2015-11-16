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
String mobile = properties.get("mobile","");
String fax = properties.get("fax","");
String tollfree = properties.get("tollfree","");
String email = properties.get("email","enter your email here");
%>

<div class="col-md-4 col-sm-4 col-xs-12">
    
<h3><%=head%></h3>

    <div class="row margin_zero contact_detils">
        <ul>
            <li><span class="pull-left glyphicon glyphicon-map-marker" aria-hidden="true"></span>
                <p><%=head%></p>
            </li>
            <li><span class="pull-left glyphicon glyphicon-earphone" aria-hidden="true"></span><a href="tel:9727561212"><%=mobile%></a>

            </li>
            <li><span class="pull-left glyphicon glyphicon-print" aria-hidden="true"></span><a href="tel:9727537856 "><%=fax%></a>

            </li>
            <li><span class="pull-left glyphicon glyphicon-earphone" aria-hidden="true"></span><a href="tel:1-888-456-3363"><%=tollfree%></a>

            </li>
            <li><span class="pull-left glyphicon glyphicon-envelope" aria-hidden="true"></span><a href="mailto:info@intellisofttech.com" style="text-decoration:underline;"><%=email%></a>

            </li>
        </ul>
    </div>
</div>

