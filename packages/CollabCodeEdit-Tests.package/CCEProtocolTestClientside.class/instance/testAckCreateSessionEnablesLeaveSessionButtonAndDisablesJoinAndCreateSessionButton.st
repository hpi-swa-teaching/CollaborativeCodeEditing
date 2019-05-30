requests backend
testAckCreateSessionEnablesLeaveSessionButtonAndDisablesJoinAndCreateSessionButton
	| ackMessage |
	
	model buildButtonsWith: ToolBuilder new.
	
	ackMessage := CCEMessage ackCreateSession: #testToken.
	
	model recieve: ackMessage serialize.
	
	self deny: (model buttonWithLabel: CCEModel createButtonLabel) enabled.
	self deny: (model buttonWithLabel: CCEModel joinButtonLabel) enabled.
	self assert: (model buttonWithLabel: CCEModel leaveButtonLabel) enabled.
	