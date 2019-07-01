tests
testSetClearSessionShouldFillSessionAndSetStatusToCleanRemoteSession
	| expectedScope expectedChecksum | 
	
	self flag: #CCE. "external dependency"
	expectedScope := #('Signals') .
	expectedChecksum := 42.
	
	session reset.
	
	session setCleanSessionWith: expectedScope and: 42.
	
	self assert: expectedScope equals: session scope.
	self assert: expectedChecksum equals: session checksum.
	self assert: (session status name) equals: CCESessionStatus cleanRemoteSession
