tests
testFillSessionWithShouldFillSessionWithScopeAndChecksum
	| expectedScope expectedChecksum | 
	
	expectedScope := #('Signals').
	expectedChecksum := 12345.
	
	session fillSessionWithScope: expectedScope andChecksum: expectedChecksum.
	
	self assert: expectedChecksum equals: session checksum.
	self assert: expectedScope equals: session scope