package com.aem.workflowstep;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.apache.felix.scr.annotations.Component;
import org.apache.felix.scr.annotations.Property;
import org.apache.felix.scr.annotations.Reference;
import org.apache.felix.scr.annotations.Service;
import org.osgi.framework.Constants;
import com.adobe.granite.workflow.WorkflowException;
import com.adobe.granite.workflow.WorkflowSession;
import com.adobe.granite.workflow.exec.WorkItem;
import com.adobe.granite.workflow.exec.WorkflowProcess;
import com.adobe.granite.workflow.metadata.MetaDataMap;
import com.day.cq.mailer.MessageGateway;
import com.day.cq.mailer.MessageGatewayService;
import org.apache.commons.mail.Email;
import org.apache.commons.mail.SimpleEmail;

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
@Reference
private MessageGatewayService messageGatewayService;
public void execute(WorkItem item, WorkflowSession wfsession,MetaDataMap args) throws WorkflowException {
try{
    log.info("Here in execute method");
    MessageGateway<Email> messageGateway;
    Email email = new SimpleEmail();
    String emailToRecipients = "tblue@nomailserver.com"; 
    String emailCcRecipients = "wblue@nomailserver.com";
    email.addTo(emailToRecipients);
    email.addCc(emailCcRecipients);
    email.setSubject("AEM Custom Step");
    email.setFrom("scottm@adobe.com"); 
    email.setMsg("This message is to inform you that the CQ content has been deleted");
    messageGateway = messageGatewayService.getGateway(Email.class);
    messageGateway.send((Email) email);
	}
catch (Exception e){
    e.printStackTrace()  ; 
    }
}
}