tests
testSetDirtySessionShouldFillSessionAndSetStatusToDirtyRemoteSession
	| expectedScope expectedChecksum | 
	
	expectedScope := #('Signals') .
	expectedChecksum := 42.
	
	session reset.
	
	session setDirtySessionWith: expectedScope and: 42.
	
	self assert: expectedScope equals: session scope.
	self assert: expectedChecksum equals: session checksum.
	self assert: (session status name) equals: CCESessionStatus dirtyRemoteSession
