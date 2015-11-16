<%--
  #%L
  ACS AEM Commons Package
  %%
  Copyright (C) 2014 Adobe
  %%
  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at
  
       http://www.apache.org/licenses/LICENSE-2.0
  
  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
  #L%
  --%>
<%@include file="/libs/foundation/global.jsp"%>
<%@ taglib prefix="wcmmode"
	uri="http://www.adobe.com/consulting/acs-aem-commons/wcmmode"%>
<%
%><%@ taglib prefix="widgets"
	uri="http://www.adobe.com/consulting/acs-aem-commons/widgets"%>
<%
%><%@ taglib prefix="xss"
	uri="http://www.adobe.com/consulting/acs-aem-commons/xss"%>
<%
%><%@ taglib prefix="wcm"
	uri="http://www.adobe.com/consulting/acs-aem-commons/wcm"%>
<c:set var="definitions"
	value="${widgets:getMultiFieldPanelValues(resource, 'definitions')}" />
<c:choose>
	<c:when test="${empty definitions}">
		<wcm:placeholder classNames="cq-dl-placeholder cq-block-placeholder" />
	</c:when>
	<c:otherwise>
		<dl>
			<c:forEach items="${definitions}" var="definition">
			${definition['image']}
							${definition['name']}
								${definition['title']}
								</c:forEach>
			
		</dl>
		<div class="row margin_zero margin_top_therty text-center">
			<c:forEach items="${definitions}" var="definition">
			<div class="col-md-2 col-sm-2 col-xs-12 col-md-offset-1-5">
				<div class="row margin_zero">
					<div class="wrap" style="float: left;">
						<img class="img-respnsive img-circle margin_zero_auto our_team"
							src="${definition['image']}"
							alt="">
					</div>
				</div>
				<div class="row margin_zero">
					<h4 class="margin_bottom_five">${definition['name']}</h4>
					<p>${definition['title']}</p>
				</div>
			</div>
			</c:forEach>
		</div>
	</c:otherwise>
</c:choose>
