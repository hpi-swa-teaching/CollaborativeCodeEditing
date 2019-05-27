requests backend
testAckJoinSessionCleanStateFillsSessionWithCorrectInfomationAndSendsSetConsistentTrueToServer
	| ackJoinSessionMessage |
	ackJoinSessionMessage := CCEMessage ackJoinSessionWith: testSessionPayload.
	
	model recieve: ackJoinSessionMessage serialize.
	
	self assert: testPackages equals: session scope.
	self assert: (CCEPackageManager default hashPackages: testPackages) equals: session checksum. 	
	self assert: (networkInterface hasMessage: (CCEMessage setConsistent: true) serialize)