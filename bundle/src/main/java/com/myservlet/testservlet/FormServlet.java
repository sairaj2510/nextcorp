package com.myservlet.testservlet;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;
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
	try{	
		 String firstName = request.getParameter("First_Name");
		 String lastName = request.getParameter("Last_Name");
		 String parentPath="/content/usergenerated/content";
		 Date date= new Date();
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
			 if(session != null) {
				PageManager pageManager = resourceResolver.adaptTo(PageManager.class);
				prodPage = pageManager.create(parentPath, pageName, template, pageTitle);
				Node pageNode = prodPage.adaptTo(Node.class);
				Node jcrNode = null;
				if (prodPage.hasContent()) {
					jcrNode = prodPage.getContentResource().adaptTo(Node.class);
				} else {
					jcrNode = pageNode.addNode("jcr:content", "cq:PageContent");
				}
				Node formNode = jcrNode.addNode("formdetails");
				formNode.setProperty("sling:resourceType", "myproject/components/formdetails");
				formNode.setProperty("FirstName", firstName);
				formNode.setProperty("LastName", lastName);
				formNode.setProperty("BirthDay", request.getParameter("bday"));
				formNode.setProperty("EmailId", request.getParameter("Email_Id"));
				formNode.setProperty("MobileNumber", request.getParameter("Mobile_Number"));
				formNode.setProperty("Gender", request.getParameter("Gender"));
				formNode.setProperty("Address", request.getParameter("Address"));
				formNode.setProperty("City", request.getParameter("City"));
				formNode.setProperty("PinCode", request.getParameter("Pin_Code"));
				formNode.setProperty("State", request.getParameter("State"));
				formNode.setProperty("Country", request.getParameter("Country"));
				formNode.setProperty("HobbyDrawing", request.getParameter("Hobby_Drawing"));
				formNode.setProperty("HobbySinging", request.getParameter("Hobby_Singing"));
				formNode.setProperty("HobbyDancing", request.getParameter("Hobby_Cooking"));
				formNode.setProperty("ClassXBoard", request.getParameter("ClassX_Board"));
				formNode.setProperty("ClassXPercentage", request.getParameter("ClassX_Percentage"));
				formNode.setProperty("ClassXYrOfPassing", request.getParameter("ClassX_YrOfPassing"));
				formNode.setProperty("ClassXIIBoard", request.getParameter("ClassXII_Board"));
				formNode.setProperty("ClassXIIPercentage", request.getParameter("ClassXII_Percentage"));
				formNode.setProperty("ClassXIIYrOfPassing", request.getParameter("ClassXII_YrOfPassing"));
				formNode.setProperty("GraduationBoard", request.getParameter("Graduation_Board"));
				formNode.setProperty("GraduationPercentage", request.getParameter("Graduation_Percentage"));
				formNode.setProperty("GraduationYrOfPassing", request.getParameter("Graduation_YrOfPassing"));
				formNode.setProperty("MastersBoard", request.getParameter("Masters_Board"));
				formNode.setProperty("MastersPercentage", request.getParameter("Masters_Percentage"));
				formNode.setProperty("MastersYrOfPassing", request.getParameter("Masters_YrOfPassing"));
				formNode.setProperty("Course_BCA", request.getParameter("Course_BCA"));
				formNode.setProperty("Course_BCom", request.getParameter("Course_BCom"));
				formNode.setProperty("Course_BSc", request.getParameter("Course_BSc"));
				formNode.setProperty("Course_BA", request.getParameter("Course_BA"));
				session.save();
				session.refresh(true);
			}
		} 
		catch (Exception e){
			e.printStackTrace();
		}
		response.sendRedirect(confirmation);
	}
	catch(Exception e){
		e.printStackTrace();
	}
	}
}