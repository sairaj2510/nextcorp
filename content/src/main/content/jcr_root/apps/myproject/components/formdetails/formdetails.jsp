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
String firstName = properties.get("FirstName","");
String lastName = properties.get("LastName","");
String birthDay = properties.get("BirthDay","");
String emailId = properties.get("EmailId","");
String mobileNumber = properties.get("MobileNumber","");
String gender = properties.get("Gender","");
String address = properties.get("Address","");
String city = properties.get("City","");
String pinCode = properties.get("PinCode","");
String state = properties.get("State","");
String country = properties.get("Country","");
String hobbyDrawing = properties.get("HobbyDrawing","");
String hobbySinging = properties.get("HobbySinging","");
String hobbyDancing = properties.get("HobbyDancing","");
String hobbyCooking = properties.get("HobbyCooking","");
String classXBoard= properties.get("ClassXBoard","");
String classXPercentage = properties.get("ClassXPercentage","");
String classXYrOfPassing = properties.get("ClassXYrOfPassing","");
String classXIIBoard = properties.get("ClassXIIBoard","");
String classXIIPercentage = properties.get("ClassXIIPercentage","");
String classXIIYrOfPassing = properties.get("ClassXIIYrOfPassing","");
String graduationBoard = properties.get("GraduationBoard","");
String graduationPercentage = properties.get("GraduationPercentage","");
String graduationYrOfPassing = properties.get("GraduationYrOfPassing","");
String mastersBoard = properties.get("MastersBoard","");
String mastersPercentage = properties.get("MastersPercentage","");
String mastersYrOfPassing = properties.get("MastersYrOfPassing","");
String coursesappliedfor = properties.get("CourseAppliedFor",""); 
%>
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
			<%=birthDay%>
		</td>
	</tr>
	<tr>
		<td><span>EMAIL ID</span></td>
		<td>
			<%=emailId%>
		</td>
	</tr>
	<tr>
		<td><span>MOBILE NUMBER</span></td>
		<td>
			<%=mobileNumber%>
		</td>
	</tr>
	<tr>
		<td><span>GENDER</span></td>
		<td>
			<%=gender%>
		</td>
	</tr>
	<tr>
		<td><span>ADDRESS</span>
		<br />
		<br />
		<br />
		</td>
 		<td>
			<%=address%>
		</td>
	</tr>
	<tr>
		<td><span>CITY</span></td>
		<td>
			<%=city%>
		</td>
	</tr>
	<tr>
		<td><span>PIN CODE</span></td>
		<td>
			<%=pinCode%>
		</td>
	</tr>
	<tr>
		<td><span>STATE</span></td>
		<td>
			<%=state%>
		</td>
	</tr>
	<tr>
		<td><span>COUNTRY</span></td>
		<td>
			<%=country%>
		</td>
	</tr>
	<tr>
		<td><span>HOBBIES</span>
		<br />
		<br />
		<br />
		</td>
		<td>
			<%=hobbyDrawing%>
			<%=hobbySinging%>
			<%=hobbyDancing%>
			<%=hobbyCooking%>
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
					<td><%=classXBoard%></td>
					<td><%=classXPercentage%></td>
					<td><%=classXYrOfPassing%></td>
				</tr>
				<tr>
					<td><span>2</span></td>
					<td><span>Class XII</span></td>
					<td><%=classXIIBoard%></td>
					<td><%=classXIIPercentage%></td>
					<td><%=classXIIYrOfPassing%></td>
				</tr>
				<tr>
					<td><span>3</span></td>
					<td><span>Graduation</span></td>
					<td><%=graduationBoard%></td>
					<td><%=graduationPercentage%></td>
					<td><%=graduationYrOfPassing%></td>
				</tr>
				<tr>
					<td><span>4</span></td>
					<td><span>Masters</span></td>
					<td><%=mastersBoard%></td>
					<td><%=mastersPercentage%></td>
					<td><%=mastersYrOfPassing%></td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td><span>COURSES
			<br />APPLIED FOR</span></td>
		<td>
			<%=coursesappliedfor%>
		</td>
	</tr>
</table>