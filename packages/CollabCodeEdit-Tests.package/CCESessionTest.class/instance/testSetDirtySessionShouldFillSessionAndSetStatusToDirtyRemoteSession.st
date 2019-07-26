tests
testSetDirtySessionShouldFillSessionAndSetStatusToDirtyRemoteSession
	session reset.
	session setDirtySessionWith: #('Signals') and: 42.
	
	self assert: #('Signals') equals: session scope.
	self assert: 42 equals: session checksum.
	self assert: (session status name) equals: CCESessionStatus dirtyRemoteSession