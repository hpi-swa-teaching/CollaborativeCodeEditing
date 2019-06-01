requests backend
testAckLeaveSessionResetSession
	| ackMessage |
	
	ackMessage := CCEMessage ackLeaveSessionWith: testAckSessionPayload.
	
	model recieve: ackMessage serialize.
	
	self assert: nil equals: session scope.
	self assert: nil equals: session checksum.
	self assert: nil equals: session token