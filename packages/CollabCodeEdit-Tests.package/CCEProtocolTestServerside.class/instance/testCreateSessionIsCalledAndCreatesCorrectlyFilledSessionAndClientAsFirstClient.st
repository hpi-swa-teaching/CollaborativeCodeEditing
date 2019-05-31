as yet unclassified
testCreateSessionIsCalledAndCreatesCorrectlyFilledSessionAndClientAsFirstClient
	| createSessionMessage createdSession | 
	
	createSessionMessage := CCEMessage createSessionWith: testSessionPayload.
	server onMessage: createSessionMessage serialize from: client1.
	
	server sessions values do: [:session | createdSession := session].
	
	self deny: createdSession isNil.
	self assert: testPackages equals: createdSession scope.
	self assert: (CCEPackageManager default hashPackages: testPackages) = createdSession initialChecksum.
	self assert: client1 equals: createdSession clients first.
	
	networkInterface1 clear.
	networkInterface2 clear.
	networkInterface3 clear.