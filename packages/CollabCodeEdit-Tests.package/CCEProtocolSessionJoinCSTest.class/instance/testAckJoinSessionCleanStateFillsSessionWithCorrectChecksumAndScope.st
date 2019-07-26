requests backend
testAckJoinSessionCleanStateFillsSessionWithCorrectChecksumAndScope
	model receive: (CCEMessage ackJoinSessionWith: testAckJoinSessionPayload) serialize.
	
	self assert: testPackages equals: session scope.
	self assert: (CCEPackageManager default hashPackages: testPackages) equals: session checksum