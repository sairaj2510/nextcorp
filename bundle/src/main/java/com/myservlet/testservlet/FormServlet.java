package com.myservlet.testservlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.jcr.Node;
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



	@Override
    protected void doPost(SlingHttpServletRequest request, SlingHttpServletResponse response) throws ServletException, IOException {
		 try
	      {
			 String firstName = request.getParameter("First_Name");
	          PrintWriter out = response.getWriter();
	          out.println(request.getParameter("First_Name"));
			  String path="/content/test";
			  String pageName="formpage";
			  String pageTitle="Sample form Page";
			  String template="/apps/myproject/templates/formtemplate";
			  
			  ResourceResolver resourceResolver =  request.getResourceResolver();
		try {
			  PageManager pageManager = resourceResolver.adaptTo(PageManager.class);
			  Page prodPage = pageManager.create(path, pageName, template, pageTitle);
			  Node pageNode = prodPage.adaptTo(Node.class);
			  
			 /* Node jcrNode = null;
			    if (prodPage.hasContent()) {
			     jcrNode = prodPage.getContentResource().adaptTo(Node.class);
			    } else {                   
			     jcrNode = pageNode.addNode("jcr:content", "cq:PageContent");
			    } */
			  Node parNode = pageNode.addNode("par");
			  parNode.setProperty("sling:resourceType", "foundation/components/parsys");
			  Node formNode = parNode.addNode("form");
			  formNode.setProperty("FirstName", firstName); 
	      } catch (Exception e) {
			   throw e;
			             
	      }
	      }
	      catch(Exception e)
	      {
	          e.printStackTrace();
	      }
	 }   
}