requests backend
testAckJoinSessionCleanStateFillsSessionWithCorrectChecksumAndScope
	model receive: (CCEMessage ackJoinSessionWith: testAckJoinSessionPayload) serialize.
	
	self assert: testPackages equals: session scope.
	self assert: (CCEPackageHasher hashPackages: testPackages) equals: session checksum. 	