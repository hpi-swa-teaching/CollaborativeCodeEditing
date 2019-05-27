requests backend
testAckCreateSessionIsCalledAndFillsSessionWithServersideGeneratedToken
	| ackCreateSessionMessage |
	ackCreateSessionMessage := CCEMessage ackCreateSession: #testToken.
	
	model recieve: ackCreateSessionMessage serialize.
	self assert: session token equals: #testToken