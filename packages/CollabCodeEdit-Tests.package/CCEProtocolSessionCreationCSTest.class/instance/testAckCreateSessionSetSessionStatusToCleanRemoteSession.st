requests backend
testAckCreateSessionSetSessionStatusToCleanRemoteSession
	model receive: (CCEMessage ackCreateSession: #testToken) serialize.
	self assert: (CCESessionStatus cleanRemoteSession = session getStatus)