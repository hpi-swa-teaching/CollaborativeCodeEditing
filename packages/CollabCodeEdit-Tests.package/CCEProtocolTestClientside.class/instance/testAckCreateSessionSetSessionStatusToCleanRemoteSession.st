requests backend
testAckCreateSessionSetSessionStatusToCleanRemoteSession
	| ackCreateSessionMessage |
	
	ackCreateSessionMessage := CCEMessage ackCreateSession: #testToken.
	
	model recieve: ackCreateSessionMessage serialize.
	self assert: (CCESessionStatus cleanRemoteSession = session getStatus)