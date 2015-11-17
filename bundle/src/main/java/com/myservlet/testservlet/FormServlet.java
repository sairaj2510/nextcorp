package com.myservlet.testservlet;

import java.io.IOException;
import java.sql.Timestamp;
import javax.servlet.ServletException;
import javax.jcr.Node;
import javax.jcr.Session;
import org.apache.felix.scr.annotations.sling.SlingServlet;
import org.apache.sling.api.SlingHttpServletRequest;
import org.apache.sling.api.SlingHttpServletResponse;
import org.apache.sling.api.servlets.SlingAllMethodsServlet;
import com.day.cq.wcm.api.PageManager;
import org.apache.sling.api.resource.ResourceResolver;
import com.day.cq.wcm.api.Page; 


@SlingServlet(
		paths = {"/bin/form"},
		methods = {"POST"},
		name = "form servlet",
		label = "form servlet"
)
public class FormServlet extends SlingAllMethodsServlet
{
	private static final long serialVersionUID = 1L;

	@Override
    protected void doPost(SlingHttpServletRequest request, SlingHttpServletResponse response) throws ServletException, IOException {
	try
	  {	
		 String firstName = request.getParameter("First_Name");
		 String lastName = request.getParameter("Last_Name");
		 String birthDay = request.getParameter("bday");
		 String emailId = request.getParameter("Email_Id");
		 String mobileNumber = request.getParameter("Mobile_Number");
		 String gender = request.getParameter("Gender");
		 String address = request.getParameter("Address");
		 String city = request.getParameter("City");
		 String pinCode = request.getParameter("Pin_Code");
		 String state = request.getParameter("State");
		 String country = request.getParameter("Country");
		 String hobbyDrawing = request.getParameter("Hobby_Drawing");
		 String hobbySinging = request.getParameter("Hobby_Singing");
		 String hobbyDancing = request.getParameter("Hobby_Dancing");
		 String hobbyCooking = request.getParameter("Hobby_Cooking");
		 String classXBoard = request.getParameter("ClassX_Board");
		 String classXPercentage = request.getParameter("ClassX_Percentage");
		 String classXYrOfPassing = request.getParameter("ClassX_YrOfPassing");
		 String classXIIBoard = request.getParameter("ClassXII_Board");
		 String classXIIPercentage = request.getParameter("ClassXII_Percentage");
		 String classXIIYrOfPassing = request.getParameter("ClassXII_YrOfPassing");
		 String graduationBoard = request.getParameter("Graduation_Board");
		 String graduationPercentage = request.getParameter("Graduation_Percentage");
		 String graduationYrOfPassing = request.getParameter("Graduation_YrOfPassing");
		 String mastersBoard = request.getParameter("Masters_Board");
		 String mastersPercentage = request.getParameter("Masters_Percentage");
		 String mastersYrOfPassing = request.getParameter("Masters_YrOfPassing");
		 String courseBCA = request.getParameter("Course_BCA");
		 String courseBCom = request.getParameter("Course_BCom");
		 String courseBSc = request.getParameter("Course_BSc");
		 String courseBA = request.getParameter("Course_BA");
	     String parentPath="/content/usergenerated/content";
	     java.util.Date date= new java.util.Date();
	     Timestamp time = new Timestamp(date.getTime());
		 String timeStamp = time.toString();
		 timeStamp = timeStamp.replaceAll("\\p{P}", "");
	     String pageNameString = firstName + "_" + lastName + "_" + timeStamp;
	     pageNameString = pageNameString.replaceAll("\\s+", "").toLowerCase();
		 String pageName= pageNameString;
		 String pageTitle="Sample form Page";
		 String template="/apps/myproject/templates/formtemplate";
		 String confirmation="/content/geometrixx/en/toolbar.html";
		 ResourceResolver resourceResolver =  request.getResourceResolver();
		 Page prodPage = null;
		 Session session = resourceResolver.adaptTo(Session.class);
		 try {        
		     if (session != null) {
		 			  PageManager pageManager = resourceResolver.adaptTo(PageManager.class);
		 			  prodPage = pageManager.create(parentPath, pageName, template, pageTitle);
		 			  Node pageNode = prodPage.adaptTo(Node.class);
		 			  Node jcrNode = null;
		 			  if (prodPage.hasContent()) {
		 				  jcrNode = prodPage.getContentResource().adaptTo(Node.class);
		 			  } else {                   
		 			  	  jcrNode = pageNode.addNode("jcr:content", "cq:PageContent");
		 			  } 
		 			  Node parNode = jcrNode.addNode("par");
		 			  parNode.setProperty("sling:resourceType", "foundation/components/parsys");
		 			  Node formNode = parNode.addNode("formdetails");
		 			  formNode.setProperty("sling:resourceType", "myproject/components/formdetails");
		 			  formNode.setProperty("FirstName", firstName);
		 			  formNode.setProperty("LastName", lastName);
		 			  formNode.setProperty("BirthDay", birthDay);
		 			  formNode.setProperty("EmailId", emailId);
		 			  formNode.setProperty("MobileNumber", mobileNumber);
		 			  formNode.setProperty("Gender", gender);
		 			  formNode.setProperty("Address", address);
		 			  formNode.setProperty("City", city);
		 			  formNode.setProperty("PinCode", pinCode);
		 			  formNode.setProperty("State", state);
		 			  formNode.setProperty("Country", country);
		 			  formNode.setProperty("HobbyDrawing", hobbyDrawing);
		 			  formNode.setProperty("HobbySinging", hobbySinging);
		 			  formNode.setProperty("HobbyDancing", hobbyDancing);
		 			  formNode.setProperty("HobbyCooking", hobbyCooking);
		 			  formNode.setProperty("ClassXBoard", classXBoard);
		 			  formNode.setProperty("ClassXPercentage", classXPercentage);
		 			  formNode.setProperty("ClassXYrOfPassing", classXYrOfPassing);
		 			  formNode.setProperty("ClassXIIBoard", classXIIBoard);
		 			  formNode.setProperty("ClassXIIPercentage", classXIIPercentage);
		 			  formNode.setProperty("ClassXIIYrOfPassing", classXIIYrOfPassing);
		 			  formNode.setProperty("GraduationBoard", graduationBoard);
		 			  formNode.setProperty("GraduationPercentage", graduationPercentage);
		 			  formNode.setProperty("GraduationYrOfPassing", graduationYrOfPassing);
		 			  formNode.setProperty("MastersBoard", mastersBoard);
		 			  formNode.setProperty("MastersPercentage", mastersPercentage);
		 			  formNode.setProperty("MastersYrOfPassing", mastersYrOfPassing);
		 			  formNode.setProperty("Course_BCA", courseBCA);
		 			  formNode.setProperty("Course_BCom", courseBCom);
		 			  formNode.setProperty("Course_BSc", courseBSc);
		 			  formNode.setProperty("Course_BA", courseBA);
		 			  
		 			  session.save();
		 			  session.refresh(true);
		     		  }
	      	  } 
		 	  catch (Exception e){
	      			  throw e;
			   		  }
		 response.sendRedirect(confirmation);
	 }
	 catch(Exception e){
	          e.printStackTrace();
	      	   }
   }   
}