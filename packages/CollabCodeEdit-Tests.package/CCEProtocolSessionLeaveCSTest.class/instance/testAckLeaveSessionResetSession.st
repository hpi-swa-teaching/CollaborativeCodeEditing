requests backend
testAckLeaveSessionResetSession
	| ackMessage testAckSessionPayload |
	
	ackMessage := CCEMessage ackLeaveSessionWith: testAckSessionPayload.
	
	model receive: ackMessage serialize.
	
	self assert: nil equals: session scope.
	self assert: nil equals: session checksum.
	self assert: nil equals: session token