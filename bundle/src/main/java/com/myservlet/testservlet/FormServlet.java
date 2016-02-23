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
	try{	
		 String firstName = request.getParameter("first_name");
		 String lastName = request.getParameter("last_name");
		 String parentPath="/content/usergenerated/content";
		 java.util.Date date= new java.util.Date();
		 Timestamp time = new Timestamp(date.getTime());
		 String timeStamp = time.toString();
		 timeStamp = timeStamp.replaceAll("\\p{P}", "");
		 String pageNameString = firstName + "_" + lastName + "_" + timeStamp;
		 pageNameString = pageNameString.replaceAll("\\s+", "").toLowerCase();
		 String pageName= pageNameString;
		 String pageTitle="form Page";
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
				formNode.setProperty("Company", request.getParameter("company"));
				formNode.setProperty("Email", request.getParameter("email"));
				formNode.setProperty("Phone", request.getParameter("phone"));
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