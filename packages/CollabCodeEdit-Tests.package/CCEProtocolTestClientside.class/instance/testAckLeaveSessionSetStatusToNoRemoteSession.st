requests backend
testAckLeaveSessionSetStatusToNoRemoteSession
	| ackMessage |
	
	ackMessage := CCEMessage ackLeaveSessionWith: testAckSessionPayload.
	
	model recieve: ackMessage serialize.
	
	self assert: (CCESessionStatus noRemoteSession = session getStatus)