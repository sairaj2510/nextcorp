<%--

  student enrollment form component.

  student enrollment form

--%><%
%><%@include file="/libs/foundation/global.jsp"%><%
%><%@page session="false" %><%
%><%

%>
<cq:includeClientLib categories="apps.form"/>
<h3>${properties.formheading}</h3>
<form class="ol-form" id="register" role="form" action="/bin/form" method="POST" align="center">
  <input type="hidden" name="oid" value="00D90000000wfMW">
  <input type="hidden" name="retURL" value="http://www.vcita.com/v/d39d13aaa65a0a5e/online_scheduling?staff_id=e83e97f0993782ad">
  <input class="ol-form-field" type="text" id="first_name" name="first_name" placeholder="*First Name" required />
  <input class="ol-form-field" type="text" id="last_name" name="last_name" placeholder="*Last Name" required />
  <input class="ol-form-field" type="text" id="company" name="company" placeholder="*Company" required />
  <input class="ol-form-field" type="text" id="email" name="email" placeholder="*Email ID" required />
  <input class="ol-form-field" type="text" id="phone" name="phone" placeholder="*Phone No" required />
  <input type="submit" class="ol-button" value="${properties.submittext}">
</form>
