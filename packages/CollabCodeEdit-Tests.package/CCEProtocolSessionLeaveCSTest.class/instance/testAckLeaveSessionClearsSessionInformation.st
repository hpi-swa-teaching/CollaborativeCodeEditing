requests backend
testAckLeaveSessionClearsSessionInformation
	model receive: (CCEMessage ackLeaveSessionWith: nil) serialize.
	
	self assert: nil equals: session scope.
	self assert: nil equals: session checksum.
	self assert: nil equals: session token