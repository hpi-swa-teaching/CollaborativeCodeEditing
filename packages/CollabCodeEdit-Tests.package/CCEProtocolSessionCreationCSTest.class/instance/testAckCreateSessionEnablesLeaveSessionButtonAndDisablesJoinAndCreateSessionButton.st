requests backend
testAckCreateSessionEnablesLeaveSessionButtonAndDisablesJoinAndCreateSessionButton
	| ackMessage |
	
	model buildButtonsWith: ToolBuilder new.
	
	ackMessage := CCEMessage ackCreateSession: #testToken.
	
	model receive: ackMessage serialize.
	
	self deny: (model perform: (model buttonWithLabel: CCEModel createButtonLabel) enabled).
	self deny: (model perform: (model buttonWithLabel: CCEModel joinButtonLabel) enabled).
	self assert: (model perform: (model buttonWithLabel: CCEModel leaveButtonLabel) enabled)
	