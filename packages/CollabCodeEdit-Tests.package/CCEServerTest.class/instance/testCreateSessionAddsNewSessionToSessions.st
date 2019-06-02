tests
testCreateSessionAddsNewSessionToSessions
	| sessionToken expectedSession | 
	
	expectedSession := server createSessionWith: testPayload.
	sessionToken := expectedSession token.
	self assert: expectedSession equals: (server sessions at: sessionToken) 