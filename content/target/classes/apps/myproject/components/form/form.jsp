<%--

  student enrollment form component.

  student enrollment form

--%><%
%><%@include file="/libs/foundation/global.jsp"%><%
%><%@page session="false" %><%
%><%

%>
<cq:includeClientLib categories="apps.form"/>
<body>
    
<h3>STUDENT REGISTRATION FORM</h3>

    <form action="/bin/form" method="POST">
        <table align="center" cellpadding="10">
            <td><span>FIRST NAME</span></td>
            <td>
                <input type="text" name="First_Name" maxlength="30" />
            </td>
            </tr>
            <tr>
                <td><span>LAST NAME</span></td>
                <td>
                    <input type="text" name="Last_Name" maxlength="30" />
                </td>
            </tr>
            <tr>
                <td><span>DATE OF BIRTH</span></td>
                <td>
                    <input type="date" name="bday">
                    <input type="submit">
                </td>
            </tr>
            <tr>
                <td><span>EMAIL ID</span></td>
                <td>
                    <input type="text" name="Email_Id" maxlength="100" />
                </td>
            </tr>
            <tr>
                <td><span>MOBILE NUMBER</span></td>
                <td>
                    <input type="text" name="Mobile_Number" maxlength="10" />(10 digit number)</td>
            </tr>
            <tr>
                <td><span>GENDER</span></td>
                <td>
                	<span>Male</span><input type="radio" name="Gender" value="Male" />
                    <span>Female</span><input type="radio" name="Gender" value="Female" />
                </td>
            </tr>
            <tr>
                <td><span>ADDRESS</span>
                    <br />
                    <br />
                    <br />
                </td>
                <td>
                    <textarea name="Address" rows="4" cols="30"></textarea>
                </td>
            </tr>
            <tr>
                <td><span>CITY</span></td>
                <td>
                    <input type="text" name="City" maxlength="30" />
                </td>
            </tr>
            <tr>
                <td><span>PIN CODE</span></td>
                <td>
                    <input type="text" name="Pin_Code" maxlength="6" />
                </td>
            </tr>
            <tr>
                <td><span>STATE</span></td>
                <td>
                    <input type="text" name="State" maxlength="30" />
                </td>
            </tr>
            <tr>
                <td><span>COUNTRY</span></td>
                <td>
                    <input type="text" name="Country"/>
                </td>
            </tr>
            <tr>
                <td><span>HOBBIES</span>
                    <br />
                    <br />
                    <br />
                </td>
                <td>
                	<span>Drawing</span><input type="checkbox" name="Hobby_Drawing" value="Drawing" />
                	<span>Singing</span><input type="checkbox" name="Hobby_Singing" value="Singing" />
                	<span>Dancing</span><input type="checkbox" name="Hobby_Dancing" value="Dancing" />
                	<span>Cooking</span><input type="checkbox" name="Hobby_Cooking" value="Cooking" />
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
                            <td align="center"><b><span>Sl.No.</span></b>

                            </td>
                            <td align="center"><b><span>Examination</span></b>

                            </td>
                            <td align="center"><b><span>Board</span></b>

                            </td>
                            <td align="center"><b><span>Percentage</span></b>

                            </td>
                            <td align="center"><b><span>Year of Passing</span></b>

                            </td>
                        </tr>
                        <tr>
                            <td><span>1</span></td>
                            <td><span>Class X</span></td>
                            <td>
                                <input type="text" name="ClassX_Board" maxlength="30" />
                            </td>
                            <td>
                                <input type="text" name="ClassX_Percentage" maxlength="30" />
                            </td>
                            <td>
                                <input type="text" name="ClassX_YrOfPassing" maxlength="30" />
                            </td>
                        </tr>
                        <tr>
                            <td><span>2</span></td>
                            <td><span>Class XII</span></td>
                            <td>
                                <input type="text" name="ClassXII_Board" maxlength="30" />
                            </td>
                            <td>
                                <input type="text" name="ClassXII_Percentage" maxlength="30" />
                            </td>
                            <td>
                                <input type="text" name="ClassXII_YrOfPassing" maxlength="30" />
                            </td>
                        </tr>
                        <tr>
                            <td><span>3</span></td>
                            <td><span>Graduation</span></td>
                            <td>
                                <input type="text" name="Graduation_Board" maxlength="30" />
                            </td>
                            <td>
                                <input type="text" name="Graduation_Percentage" maxlength="30" />
                            </td>
                            <td>
                                <input type="text" name="Graduation_YrOfPassing" maxlength="30" />
                            </td>
                        </tr>
                        <tr>
                            <td><span>4</span></td>
                            <td><span>Masters</span></td>
                            <td>
                                <input type="text" name="Masters_Board" maxlength="30" />
                            </td>
                            <td>
                                <input type="text" name="Masters_Percentage" maxlength="30" />
                            </td>
                            <td>
                                <input type="text" name="Masters_YrOfPassing" maxlength="30" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td><span>COURSES
                    <br />APPLIED FOR</span></td>
                <td>
                	<span>BCA</span><input type="radio" name="Course_BCA" value="BCA">
                	<span>B.Com</span><input type="radio" name="Course_BCom" value="B.Com">
                	<span>B.Sc</span><input type="radio" name="Course_BSc" value="B.Sc">
                	<span>B.A</span><input type="radio" name="Course_BA" value="B.A">
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" class="btnLogin" value="Submit" tabindex="4">
                    <input type="submit" class="btnLogin" value="Reset" tabindex="4">
                </td>
            </tr>
        </table>
    </form>
</body>