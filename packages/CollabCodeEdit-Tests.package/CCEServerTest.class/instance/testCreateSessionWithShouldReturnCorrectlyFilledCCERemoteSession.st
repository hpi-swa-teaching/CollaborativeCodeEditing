tests
testCreateSessionWithShouldReturnCorrectlyFilledCCERemoteSession
	| expectedChecksum expectedScope createdRemoteSession | 
	
	expectedChecksum  :=  testPayload at: #checksum.
	expectedScope := testPayload at: #scope.
	
	createdRemoteSession := server
		createSessionWith: testPayload
		andCreator: CCERemoteClient new.
	
	self assert: expectedChecksum equals: createdRemoteSession initialChecksum.
	self assert: expectedScope equals: createdRemoteSession scope.
	self deny: createdRemoteSession token isNil
	