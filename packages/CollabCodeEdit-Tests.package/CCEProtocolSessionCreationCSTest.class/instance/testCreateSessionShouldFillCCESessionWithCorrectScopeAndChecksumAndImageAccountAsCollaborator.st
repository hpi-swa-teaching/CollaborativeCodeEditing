requests ui
testCreateSessionShouldFillCCESessionWithCorrectScopeAndChecksumAndImageAccountAsCollaborator
	model createSessionWith: testPackages.	
		
	self assert: testPackages equals: session scope.
	self assert: session checksum equals: (CCEPackageManager default hashPackages: testPackages).
	
	networkInterface clear