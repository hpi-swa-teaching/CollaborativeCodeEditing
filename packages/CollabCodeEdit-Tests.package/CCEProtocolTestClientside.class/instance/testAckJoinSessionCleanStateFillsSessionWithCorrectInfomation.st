requests backend
testAckJoinSessionCleanStateFillsSessionWithCorrectInfomation
	| ackJoinSessionMessage |
	
	ackJoinSessionMessage := CCEMessage ackJoinSessionWith: testSessionPayload.
	
	model receive: ackJoinSessionMessage serialize.
	
	self assert: testPackages equals: session scope.
	self assert: (CCEPackageManager default hashPackages: testPackages) equals: session checksum. 	
	
	networkInterface clear