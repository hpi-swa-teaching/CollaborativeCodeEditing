requests backend
testAckCreateSessionSetSessionStatusToCleanRemoteSession
	| ackCreateSessionMessage |
	
	ackCreateSessionMessage := CCEMessage ackCreateSession: #testToken.
	
	model receive: ackCreateSessionMessage serialize.
	self assert: (CCESessionStatus cleanRemoteSession = session getStatus)