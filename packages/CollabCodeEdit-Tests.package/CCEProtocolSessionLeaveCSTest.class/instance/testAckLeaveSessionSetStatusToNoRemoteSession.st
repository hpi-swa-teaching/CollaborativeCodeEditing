requests backend
testAckLeaveSessionSetStatusToNoRemoteSession
	| ackMessage testAckSessionPayload |
	
	ackMessage := CCEMessage ackLeaveSessionWith: testAckSessionPayload.
	
	model receive: ackMessage serialize.
	
	self assert: (CCESessionStatus noRemoteSession = session getStatus)