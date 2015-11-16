<%--

  bootstrap accordion  component.

  This is my bootstrap accordion component

--%><%
%><%@include file="/libs/foundation/global.jsp"%><%
%><%@page session="false" %><%
%>
<%
     String[] tabheading=properties.get("headings",String[].class);
%>
<div class="bs-example">
    <div class="panel-group" id="accordion">
        <% for(int i=0;i<tabheading.length;i++){ %>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordion" href='<%="#collapseOne"+i%>'> <%= tabheading[i]%></a>
                </h4>
            </div>
            <div id='<%="collapseOne"+i%>' class="panel-collapse collapse in">
                <div class="panel-body">
                    <cq:include path= '<%="headingdesc"+i%>' resourceType="foundation/components/text"/>
                    <cq:include path= '<%="headingpar"+i%>' resourceType="foundation/components/parsys"/>
                </div>
            </div>
        </div> <% } %>
    </div>
</div>