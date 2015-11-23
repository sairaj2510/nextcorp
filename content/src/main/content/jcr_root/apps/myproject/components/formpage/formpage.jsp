<%--

  formpage component.



--%><%
%><%@include file="/libs/foundation/global.jsp"%><%
%><%@page session="false" %><%
%><%@page import="com.day.cq.wcm.foundation.Image,
				org.apache.sling.api.resource.ResourceResolver,
				com.day.cq.wcm.api.Page,
				com.day.cq.dam.api.Asset"
%>
<body>
<cq:include path="init" resourceType="wcm/core/components/init" />
<%
Node node = currentPage.getContentResource("par").adaptTo(Node.class);
NodeIterator formNode = node.getNodes();
while(formNode.hasNext()){
Node formDetails = formNode.nextNode();
String firstName = properties.get("firstname",formDetails.getProperty("FirstName").getString());
String lastName = properties.get("lastname",formDetails.getProperty("LastName").getString());%>
<cq:includeClientLib categories="apps.formpage"/>
<h3 align="center">INFORMATION OF <span class="cname"><%=firstName%> <%=lastName%></span></span> REGARDING STUDENT ENROLLMENT FORM</h3>
<table align="center" cellpadding="10">
	<tr>
		<td><span>FIRST NAME</span></td>
		<td>
			<%=firstName%>
		</td>
	</tr>
	<tr>
		<td><span>LAST NAME</span></td>
		<td>
			<%=lastName%>
		</td>
	</tr>
	<tr>
		<td><span>DATE OF BIRTH</span></td>
		<td>
			<%=formDetails.getProperty("BirthDay").getString()%>
		</td>
	</tr>
	<tr>
		<td><span>EMAIL ID</span></td>
		<td>
			<%=formDetails.getProperty("EmailId").getString()%>
		</td>
	</tr>
	<tr>
		<td><span>MOBILE NUMBER</span></td>
		<td>
			<%=formDetails.getProperty("MobileNumber").getString()%>
		</td>
	</tr>
	<tr>
		<td><span>GENDER</span></td>
		<td>
			<%=formDetails.getProperty("Gender").getString()%>
		</td>
	</tr>
	<tr>
		<td><span>ADDRESS</span>
		<br />
		<br />
		<br />
		</td>
 		<td>
			<%=formDetails.getProperty("Address").getString()%>
		</td>
	</tr>
	<tr>
		<td><span>CITY</span></td>
		<td>
			<%=formDetails.getProperty("City").getString()%>
		</td>
	</tr>
	<tr>
		<td><span>PIN CODE</span></td>
		<td>
			<%=formDetails.getProperty("PinCode").getString()%>
		</td>
	</tr>
	<tr>
		<td><span>STATE</span></td>
		<td>
			<%=formDetails.getProperty("State").getString()%>
		</td>
	</tr>
	<tr>
		<td><span>COUNTRY</span></td>
		<td>
			<%=formDetails.getProperty("Country").getString()%>
		</td>
	</tr>
	<tr>
		<td><span>HOBBIES</span>
		<br />
		<br />
		<br />
		</td>
		<td>
			<%if (formDetails.hasProperty("HobbyDrawing")){%><%=formDetails.getProperty("HobbyDrawing").getString()%><%}%>
			<%if (formDetails.hasProperty("HobbySinging")){%><%=formDetails.getProperty("HobbySinging").getString()%><%}%>
			<%if (formDetails.hasProperty("HobbyDancing")){%><%=formDetails.getProperty("HobbyDancing").getString()%><%}%>
			<%if (formDetails.hasProperty("HobbyCooking")){%><%=formDetails.getProperty("HobbyCooking").getString()%><%}%>
		</td>
	</tr>
	<tr>
		<td><span>QUALIFICATION</span>
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		</td>
		<td>
			<table class="inner">
				<tr>
					<td align="center"><b><span>Sl.No.</span></b></td>
					<td align="center"><b><span>Examination</span></b></td>
					<td align="center"><b><span>Board</span></b></td>
					<td align="center"><b><span>Percentage</span></b></td>
					<td align="center"><b><span>Year of Passing</span></b></td>
				</tr>
				<tr>
					<td><span>1</span></td>
					<td><span>Class X</span></td>
					<td><%=formDetails.getProperty("ClassXBoard").getString()%></td>
					<td><%=formDetails.getProperty("ClassXPercentage").getString()%></td>
					<td><%=formDetails.getProperty("ClassXYrOfPassing").getString()%></td>
				</tr>
				<tr>
					<td><span>2</span></td>
					<td><span>Class XII</span></td>
					<td><%=formDetails.getProperty("ClassXIIBoard").getString()%></td>
					<td><%=formDetails.getProperty("ClassXIIPercentage").getString()%></td>
					<td><%=formDetails.getProperty("ClassXIIYrOfPassing").getString()%></td>
				</tr>
				<tr>
					<td><span>3</span></td>
					<td><span>Graduation</span></td>
					<td><%=formDetails.getProperty("GraduationBoard").getString()%></td>
					<td><%=formDetails.getProperty("GraduationPercentage").getString()%></td>
					<td><%=formDetails.getProperty("GraduationYrOfPassing").getString()%></td>
				</tr>
				<tr>
					<td><span>4</span></td>
					<td><span>Masters</span></td>
					<td><%=formDetails.getProperty("MastersBoard").getString()%></td>
					<td><%=formDetails.getProperty("MastersPercentage").getString()%></td>
					<td><%=formDetails.getProperty("MastersYrOfPassing").getString()%></td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td><span>COURSES
			<br />APPLIED FOR</span></td>
		<td>
			<%if (formDetails.hasProperty("Course_BCA")){%><%=formDetails.getProperty("Course_BCA").getString()%><%}%>
			<%if (formDetails.hasProperty("Course_BCom")){%><%=formDetails.getProperty("Course_BCom").getString()%><%}%>
			<%if (formDetails.hasProperty("Course_BSc")){%><%=formDetails.getProperty("Course_BSc").getString()%><%}%>
			<%if (formDetails.hasProperty("Course_BA")){%><%=formDetails.getProperty("Course_BA").getString()%><%}%>
		</td>
	</tr>
</table>
<%}%>
</body>