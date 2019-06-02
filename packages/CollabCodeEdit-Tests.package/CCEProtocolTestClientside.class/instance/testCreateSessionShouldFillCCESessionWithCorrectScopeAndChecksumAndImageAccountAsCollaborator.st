requests ui
testCreateSessionShouldFillCCESessionWithCorrectScopeAndChecksumAndImageAccountAsCollaborator
	| expectedScope expectedChecksum expectedCollaboratorList | 	
	
	expectedCollaboratorList := OrderedCollection newFrom: {imageAccount}.
	expectedScope := testPackages.
	expectedChecksum := CCEPackageManager default hashPackages: testPackages. 
		
	model createSessionWith: testPackages.	
		
	self assert: expectedScope equals: session scope.
	self assert: expectedChecksum equals: session checksum.
	self assert: (expectedCollaboratorList = session collaborators).
	
	networkInterface clear