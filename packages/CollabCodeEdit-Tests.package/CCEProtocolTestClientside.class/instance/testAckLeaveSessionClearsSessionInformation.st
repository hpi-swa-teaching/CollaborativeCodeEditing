requests backend
testAckLeaveSessionClearsSessionInformation
	| ackMessage |
	
	ackMessage := CCEMessage ackLeaveSession.
	
	model recieve: ackMessage serialize.
	
	self assert: nil equals: session scope.
	self assert: nil equals: session checksum.
	self assert: nil equals: session token.