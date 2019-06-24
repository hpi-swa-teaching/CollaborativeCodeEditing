requests backend
testAckCreateSessionFillsSessionWithFirstCollaboratorFromAccount
	| ackCreateSessionMessage |
	ackCreateSessionMessage := CCEMessage ackCreateSession: #testToken.
	
	model receive: ackCreateSessionMessage serialize.
	
	self assert: (session collaborators at: testIdentifier) identifier = imageAccount humanReadableName