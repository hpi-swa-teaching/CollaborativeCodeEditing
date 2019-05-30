requests backend
testAckLeaveSessionSetStatusToNoRemoteSession
	| ackMessage |
	
	ackMessage := CCEMessage ackLeaveSession.
	
	model recieve: ackMessage serialize.
	
	self assert: (CCESessionStatus noRemoteSession = session status name)