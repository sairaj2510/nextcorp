package com.myservlet.testservlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import org.apache.felix.scr.annotations.sling.SlingServlet;
import org.apache.sling.api.SlingHttpServletRequest;
import org.apache.sling.api.SlingHttpServletResponse;
import org.apache.sling.api.servlets.SlingAllMethodsServlet;
@SlingServlet(
		paths = {"/bin/hello"},
		methods = {"GET"},
		name = "Hello servlet",
		label = "hello demo servlet",
		description = "Servlet for retrieving Hello Servlet"
)
public class helloServlet extends SlingAllMethodsServlet
{

	@Override
    protected void doGet(SlingHttpServletRequest request, SlingHttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/plain");
	    //response.getOutputStream().print("Hello AbsoluteUrlServlet World!");  
	    //response.getWriter().write("Hello World");
		PrintWriter pw = response.getWriter();
		  pw.println("<html>");
		  pw.println("<head><title>Hello World</title></title>");
		  pw.println("<body>");
		  pw.println("<h1>Hello World</h1>");
		  pw.println("</body></html>");
    }
}