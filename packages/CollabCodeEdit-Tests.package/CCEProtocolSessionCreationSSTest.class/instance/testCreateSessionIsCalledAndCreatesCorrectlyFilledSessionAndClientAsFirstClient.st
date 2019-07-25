testing
testCreateSessionIsCalledAndCreatesCorrectlyFilledSessionAndClientAsFirstClient
	| createSessionMessage createdSession | 
	
	createSessionMessage := CCEMessage createSessionWith: testSessionCreationPayload.
	server onMessage: createSessionMessage serialize from: client1.
	
	server sessions values do: [:session | createdSession := session].
	
	self deny: createdSession isNil.
	self assert: testPackages equals: createdSession scope.
	self assert: (CCEPackageHasher hashPackages: testPackages) = createdSession initialChecksum.
	self assert: client1 equals: createdSession clients first