package com.aem.workflowstep;

import javax.jcr.Node;
import javax.jcr.Session; 
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.apache.felix.scr.annotations.Component;
import org.apache.felix.scr.annotations.Property;
import org.apache.felix.scr.annotations.Service;
import org.apache.sling.api.adapter.Adaptable;
import org.osgi.framework.Constants;
import com.adobe.granite.workflow.WorkflowException;
import com.adobe.granite.workflow.WorkflowSession;
import com.adobe.granite.workflow.exec.WorkItem;
import com.adobe.granite.workflow.exec.WorkflowData;
import com.adobe.granite.workflow.exec.WorkflowProcess;
import com.adobe.granite.workflow.metadata.MetaDataMap;
import com.day.cq.wcm.api.Page;
import com.day.cq.wcm.api.PageManager;

@Component
@Service
public class MoveStep implements WorkflowProcess {
@Property(value = "Test Email workflow process implementation.")
static final String DESCRIPTION = Constants.SERVICE_DESCRIPTION;
@Property(value = "Adobe")
static final String VENDOR = Constants.SERVICE_VENDOR; 
@Property(value = "Move ContentPage Workflow Process") 
static final String LABEL="process.label";
protected final Logger log = LoggerFactory.getLogger(this.getClass());

public void execute(WorkItem item, WorkflowSession wfsession,MetaDataMap args) throws WorkflowException {
try{
Session session = wfsession.adaptTo(Session.class);
Node node = session.getNode("/content/usergenerated/content");

session.save();

	}
catch (Exception e){
    e.printStackTrace()  ; 
    }
}
}