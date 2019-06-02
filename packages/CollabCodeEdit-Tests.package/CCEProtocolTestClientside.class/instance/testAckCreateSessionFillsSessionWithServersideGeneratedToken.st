requests backend
testAckCreateSessionFillsSessionWithServersideGeneratedToken
	| ackCreateSessionMessage |
	ackCreateSessionMessage := CCEMessage ackCreateSession: #testToken.
	
	model recieve: ackCreateSessionMessage serialize.
	self assert: session token equals: #testToken