tests-session
testCreateSessionWithShouldFillCCESessionWithSessionScopeAndSessionHash
	| cceSession expectedSessionScope | 
	
	expectedSessionScope := #('Signals').
	cceSession := 	model createSessionWith: expectedSessionScope.
	self assert: cceSession scope == expectedSessionScope.
	
	self assert: cceSession checksum equals: (CCEPackageManager default hashPackages: expectedSessionScope).
	
	