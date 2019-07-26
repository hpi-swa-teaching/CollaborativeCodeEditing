testing
testCreateSessionIsCalledAndCreatesCorrectlyFilledSessionAndClientAsFirstClient
	| createdSession | 

	server onMessage: ( CCEMessage createSessionWith: testSessionCreationPayload) serialize from: client1.
	createdSession := server sessions values last.
	
	self deny: createdSession isNil.
	self assert: testPackages equals: createdSession scope.
	self assert: (CCEPackageManager default hashPackages: testPackages) = createdSession initialChecksum.
	self assert: client1 equals: createdSession clients first