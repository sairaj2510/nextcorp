<%@include file="/libs/foundation/global.jsp"%><%
%><%@page session="false" %>
<div class="header">
	<div class="container_16">
		<div class="grid_8">
			<cq:include path="logo" resourceType="training/components/global/logo"/>
		</div>
		<div class="grid_8">
			<div class="search_area">
				<cq:include path="userinfo" resourceType="foundation/components/userinfo"/>
				<cq:include path="toptoolbar" resourceType="foundation/components/toolbar"/>
				<div> search</div>
				<div class="clear"></div>
			</div>
		</div>
			<cq:include path="topnav" resourceType="training/components/global/topnav"/>
	</div>
</div>