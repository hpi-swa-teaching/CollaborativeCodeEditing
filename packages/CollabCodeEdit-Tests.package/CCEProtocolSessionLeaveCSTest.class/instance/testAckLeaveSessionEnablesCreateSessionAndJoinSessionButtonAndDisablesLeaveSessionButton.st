requests backend
testAckLeaveSessionEnablesCreateSessionAndJoinSessionButtonAndDisablesLeaveSessionButton
	| ackMessage testAckSessionPayload |
	
	model buildButtonsWith: ToolBuilder new.
	
	ackMessage := CCEMessage ackLeaveSessionWith: testAckSessionPayload.
	
	model receive: ackMessage serialize.
	
	self assert: (model perform: (model buttonWithLabel: CCEModel createButtonLabel) enabled).
	self assert: (model perform: (model buttonWithLabel: CCEModel joinButtonLabel) enabled).
	self deny: (model perform: (model buttonWithLabel: CCEModel leaveButtonLabel) enabled)
	