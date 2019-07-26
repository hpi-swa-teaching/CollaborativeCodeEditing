requests backend
testAckCreateSessionEnablesLeaveSessionButtonAndDisablesJoinAndCreateSessionButton
	model buildButtonsWith: ToolBuilder new.
	
	model receive: (CCEMessage ackCreateSession: #testToken) serialize.
	
	self deny: (model perform: (model buttonWithLabel: CCEModel createButtonLabel) enabled).
	self deny: (model perform: (model buttonWithLabel: CCEModel joinButtonLabel) enabled).
	self assert: (model perform: (model buttonWithLabel: CCEModel leaveButtonLabel) enabled)
	