requests ui
testCreateSessionShouldFillCCESessionWithCorrectScopeAndChecksum
	| expectedScope expectedChecksum | 	
	
	expectedScope := testPackages.
	expectedChecksum := CCEPackageManager default hashPackages: testPackages. 
		
	model createSessionWith: testPackages.	
		
	self assert: expectedScope equals: session scope.
	self assert: expectedChecksum equals: session checksum.
	
	networkInterface clear