tests
testCreateSessionAddsNewSessionToSessions
	| sessionToken expectedSession | 
	
	expectedSession := server
		createSessionWith: testPayload
		andCreator: CCERemoteClient new.
	sessionToken := expectedSession token.
	self assert: expectedSession equals: (server sessions at: sessionToken) 