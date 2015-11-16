<%--

 About Us Component.

  

--%><%
%><%@include file="/libs/foundation/global.jsp"%><%
%><%@page session="false" %><%
%><%
	String pageheading = properties.get("pageheading","");
	String text = properties.get("text","");
%> 

<div id="main" class="site-main">

<div class="row margin_zero">
<div id="primary" class="content-area content_wrapper">
		<div id="content" class="site-content" role="main">

					<header class="entry-header">
                      <div class="container">
												<h1 class="entry-title"><%=pageheading%></h1>
												<p> <%=text%> </p>
                     </div>   
					</header>		
		</div>
	</div>
	</div> 
	</div> 