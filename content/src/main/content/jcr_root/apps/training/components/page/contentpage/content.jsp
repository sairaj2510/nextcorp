<%@include file="/libs/foundation/global.jsp"%><%
%><%@page session="false" %>

<div class="container_16">
		<div class="grid_16">
			<cq:include path="breadcrumb" resourceType="foundation/components/breadcrumb"/>
			<cq:include path="title_node" resourceType="training/components/global/title"/>
		</div>
		<div class="grid_12 body_container">
			<cq:include path="par" resourceType="foundation/components/parsys"/>
		</div>
		<div class="grid_4 right_container">
			<div> newlist </div>
			<cq:include path="rightpar" resourceType="foundation/components/iparsys"/>
		</div>
		<div class="clear"></div>
</div>