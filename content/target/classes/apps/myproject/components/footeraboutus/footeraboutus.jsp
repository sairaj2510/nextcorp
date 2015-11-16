<%--

Footer About Us Component.

  

--%><%
%><%@include file="/libs/foundation/global.jsp"%><%
%><%@page session="false" %><%
%><%
	String pageheading = properties.get("head","Enter heading");
	String text = properties.get("para","Enter para");
%> 


        <!--Start Container-->
       
            <div class="col-md-4 col-sm-4 col-xs-12">
	    		<h3><%=pageheading%></h3>

                <p>
                    <%=text%>
                </p>
            </div>
 