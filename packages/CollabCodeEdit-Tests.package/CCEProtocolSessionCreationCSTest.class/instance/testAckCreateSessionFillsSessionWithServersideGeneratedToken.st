requests backend
testAckCreateSessionFillsSessionWithServersideGeneratedToken
	model receive: (CCEMessage ackCreateSession: #testToken) serialize.
	self assert: session token equals: #testToken