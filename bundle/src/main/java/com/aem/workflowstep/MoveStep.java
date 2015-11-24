package com.aem.workflowstep;

import javax.jcr.Session; 
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.apache.felix.scr.annotations.Component;
import org.apache.felix.scr.annotations.Property;
import org.apache.felix.scr.annotations.Service;
import org.osgi.framework.Constants;
import com.adobe.granite.workflow.WorkflowException;
import com.adobe.granite.workflow.WorkflowSession;
import com.adobe.granite.workflow.exec.WorkItem;
import com.adobe.granite.workflow.exec.WorkflowData;
import com.adobe.granite.workflow.exec.WorkflowProcess;
import com.adobe.granite.workflow.metadata.MetaDataMap;

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
WorkflowData workflowData = item.getWorkflowData();
String source = "/content/usergenerated/content";
String destination = "/content/testform";

String damPath = workflowData.getPayload().toString();
	}
catch (Exception e){
    e.printStackTrace()  ; 
    }
}
}