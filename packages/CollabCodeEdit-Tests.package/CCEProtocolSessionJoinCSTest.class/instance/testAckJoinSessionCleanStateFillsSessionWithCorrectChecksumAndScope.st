requests backend
testAckJoinSessionCleanStateFillsSessionWithCorrectChecksumAndScope
	| ackJoinSessionMessage |
	
	ackJoinSessionMessage := CCEMessage ackJoinSessionWith: testAckJoinSessionPayload.
	
	model receive: ackJoinSessionMessage serialize.
	
	self assert: testPackages equals: session scope.
	self assert: (CCEPackageHasher hashPackages: testPackages) equals: session checksum. 	
	
	networkInterface clear