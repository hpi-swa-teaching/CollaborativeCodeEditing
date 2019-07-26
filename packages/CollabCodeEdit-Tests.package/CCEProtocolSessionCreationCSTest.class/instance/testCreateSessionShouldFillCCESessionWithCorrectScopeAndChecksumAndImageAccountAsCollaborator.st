requests ui
testCreateSessionShouldFillCCESessionWithCorrectScopeAndChecksumAndImageAccountAsCollaborator
	| expectedScope expectedChecksum | 	
	
	expectedScope := testPackages.
	expectedChecksum := CCEPackageHasher hashPackages: testPackages. 
		
	model createSessionWith: testPackages.	
		
	self assert: expectedScope equals: session scope.
	self assert: expectedChecksum equals: session checksum.
	
	networkInterface clear