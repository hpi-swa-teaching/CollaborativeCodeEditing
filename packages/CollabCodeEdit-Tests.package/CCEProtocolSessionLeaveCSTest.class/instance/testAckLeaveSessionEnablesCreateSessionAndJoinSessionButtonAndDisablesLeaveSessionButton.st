requests backend
testAckLeaveSessionEnablesCreateSessionAndJoinSessionButtonAndDisablesLeaveSessionButton	
	model buildButtonsWith: ToolBuilder new.
	model receive: (CCEMessage ackLeaveSessionWith: nil) serialize.
	
	self assert: (model perform: (model buttonWithLabel: CCEModel createButtonLabel) enabled).
	self assert: (model perform: (model buttonWithLabel: CCEModel joinButtonLabel) enabled).
	self deny: (model perform: (model buttonWithLabel: CCEModel leaveButtonLabel) enabled)
	