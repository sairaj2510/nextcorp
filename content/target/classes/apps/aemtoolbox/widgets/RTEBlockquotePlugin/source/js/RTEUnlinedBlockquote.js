//create widget namespace
CQ.Ext.ns('AEM.Toolbox.Widgets.rte.commands');

AEM.Toolbox.Widgets.rte.commands.RTEUnlinedBlockquoteCommand = CQ.Ext.extend(AEM.Toolbox.Widgets.rte.commands.RTELinedBlockquoteCommand , {

	//determines if the command provided is a match for this command object.
	isCommand:function (cmdStr) {
		return (cmdStr.toLowerCase() == "rteunlinedblockquotecommand");
	},

	paragraphClassStyle:function(){
		return "unlined";
	}
});

// register command
CQ.form.rte.commands.CommandRegistry.register("rteunlinedblockquotecommand", AEM.Toolbox.Widgets.rte.commands.RTEUnlinedBlockquoteCommand);