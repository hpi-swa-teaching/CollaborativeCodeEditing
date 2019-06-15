requests backend
testAckLeaveSessionSetStatusToNoRemoteSession
	| ackMessage |
	
	ackMessage := CCEMessage ackLeaveSessionWith: testAckSessionPayload.
	
	model receive: ackMessage serialize.
	
	self assert: (CCESessionStatus noRemoteSession = session getStatus)