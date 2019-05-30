requests backend
testAckLeaveSessionEnablesCreateSessionAndJoinSessionButtonAndDisablesLeaveSessionButton
	| ackMessage |
	
	model buildButtonsWith: ToolBuilder new.
	
	ackMessage := CCEMessage ackLeaveSession.
	
	model recieve: ackMessage serialize.
	
	self assert: (model perform: (model buttonWithLabel: CCEModel createButtonLabel) enabled).
	self assert: (model perform: (model buttonWithLabel: CCEModel joinButtonLabel) enabled).
	self deny: (model perform: (model buttonWithLabel: CCEModel leaveButtonLabel) enabled)
	