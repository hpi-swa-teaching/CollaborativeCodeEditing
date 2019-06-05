requests backend
testAckJoinSessionCleanStateFillsSessionWithCorrectChecksumAndScope
	| ackJoinSessionMessage |
	
	ackJoinSessionMessage := CCEMessage ackJoinSessionWith: testAckJoinSessionPayload.
	
	model recieve: ackJoinSessionMessage serialize.
	
	self assert: testPackages equals: session scope.
	self assert: (CCEPackageManager default hashPackages: testPackages) equals: session checksum. 	
	
	networkInterface clear