requests backend
testAckCreateSessionFillsSessionWithServersideGeneratedToken
	| ackCreateSessionMessage |
	ackCreateSessionMessage := CCEMessage ackCreateSession: #testToken.
	
	model receive: ackCreateSessionMessage serialize.
	self assert: session token equals: #testToken