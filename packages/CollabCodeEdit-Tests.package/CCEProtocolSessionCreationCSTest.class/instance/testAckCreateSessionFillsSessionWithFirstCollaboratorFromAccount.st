requests backend
testAckCreateSessionFillsSessionWithFirstCollaboratorFromAccount
	model receive: (CCEMessage ackCreateSession: #testToken) serialize.
	
	self assert: (session collaborators at: testIdentifier) identifier = imageAccount humanReadableName