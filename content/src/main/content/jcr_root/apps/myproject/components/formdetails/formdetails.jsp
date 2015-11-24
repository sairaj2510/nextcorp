<%--

  Form Details component.

  form details

--%><%
%><%@include file="/libs/foundation/global.jsp"%><%
%><%@page session="false" %><%
%><%@page import="com.day.cq.wcm.foundation.Image,
				org.apache.sling.api.resource.ResourceResolver,
				com.day.cq.wcm.api.Page,
				com.day.cq.dam.api.Asset"%>
<%

String firstName = currentNode.getProperty("FirstName").getString();
String lastName = currentNode.getProperty("LastName").getString();%>
<cq:includeClientLib categories="apps.formdetails"/>
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
			<%=currentNode.getProperty("BirthDay").getString()%>
		</td>
	</tr>
	<tr>
		<td><span>EMAIL ID</span></td>
		<td>
			<%=currentNode.getProperty("EmailId").getString()%>
		</td>
	</tr>
	<tr>
		<td><span>MOBILE NUMBER</span></td>
		<td>
			<%=currentNode.getProperty("MobileNumber").getString()%>
		</td>
	</tr>
	<tr>
		<td><span>GENDER</span></td>
		<td>
			<%if (currentNode.hasProperty("Gender")){%><%=currentNode.getProperty("Gender").getString()%><%}%>
		</td>
	</tr>
	<tr>
		<td><span>ADDRESS</span>
		<br />
		<br />
		<br />
		</td>
 		<td>
			<%=currentNode.getProperty("Address").getString()%>
		</td>
	</tr>
	<tr>
		<td><span>CITY</span></td>
		<td>
			<%=currentNode.getProperty("City").getString()%>
		</td>
	</tr>
	<tr>
		<td><span>PIN CODE</span></td>
		<td>
			<%=currentNode.getProperty("PinCode").getString()%>
		</td>
	</tr>
	<tr>
		<td><span>STATE</span></td>
		<td>
			<%=currentNode.getProperty("State").getString()%>
		</td>
	</tr>
	<tr>
		<td><span>COUNTRY</span></td>
		<td>
			<%=currentNode.getProperty("Country").getString()%>
		</td>
	</tr>
	<tr>
		<td><span>HOBBIES</span>
		<br />
		<br />
		<br />
		</td>
		<td>
			<%if (currentNode.hasProperty("HobbyDrawing")){%><%=currentNode.getProperty("HobbyDrawing").getString()%><%}%>
			<%if (currentNode.hasProperty("HobbySinging")){%><%=currentNode.getProperty("HobbySinging").getString()%><%}%>
			<%if (currentNode.hasProperty("HobbyDancing")){%><%=currentNode.getProperty("HobbyDancing").getString()%><%}%>
			<%if (currentNode.hasProperty("HobbyCooking")){%><%=currentNode.getProperty("HobbyCooking").getString()%><%}%>
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
					<td><%=currentNode.getProperty("ClassXBoard").getString()%></td>
					<td><%=currentNode.getProperty("ClassXPercentage").getString()%></td>
					<td><%=currentNode.getProperty("ClassXYrOfPassing").getString()%></td>
				</tr>
				<tr>
					<td><span>2</span></td>
					<td><span>Class XII</span></td>
					<td><%=currentNode.getProperty("ClassXIIBoard").getString()%></td>
					<td><%=currentNode.getProperty("ClassXIIPercentage").getString()%></td>
					<td><%=currentNode.getProperty("ClassXIIYrOfPassing").getString()%></td>
				</tr>
				<tr>
					<td><span>3</span></td>
					<td><span>Graduation</span></td>
					<td><%=currentNode.getProperty("GraduationBoard").getString()%></td>
					<td><%=currentNode.getProperty("GraduationPercentage").getString()%></td>
					<td><%=currentNode.getProperty("GraduationYrOfPassing").getString()%></td>
				</tr>
				<tr>
					<td><span>4</span></td>
					<td><span>Masters</span></td>
					<td><%=currentNode.getProperty("MastersBoard").getString()%></td>
					<td><%=currentNode.getProperty("MastersPercentage").getString()%></td>
					<td><%=currentNode.getProperty("MastersYrOfPassing").getString()%></td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td><span>COURSES
			<br />APPLIED FOR</span></td>
		<td>
			<%if (currentNode.hasProperty("Course_BCA")){%><%=currentNode.getProperty("Course_BCA").getString()%><%}%>
			<%if (currentNode.hasProperty("Course_BCom")){%><%=currentNode.getProperty("Course_BCom").getString()%><%}%>
			<%if (currentNode.hasProperty("Course_BSc")){%><%=currentNode.getProperty("Course_BSc").getString()%><%}%>
			<%if (currentNode.hasProperty("Course_BA")){%><%=currentNode.getProperty("Course_BA").getString()%><%}%>
		</td>
	</tr>
</table>