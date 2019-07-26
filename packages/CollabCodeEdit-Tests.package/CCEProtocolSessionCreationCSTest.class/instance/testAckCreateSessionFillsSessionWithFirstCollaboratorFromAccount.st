requests backend
testAckCreateSessionFillsSessionWithFirstCollaboratorFromAccount
	model receive: (CCEMessage ackCreateSession: #testToken) serialize.
	
	self assert: (session collaborators at: imageAccount humanReadableName) identifier = imageAccount humanReadableName