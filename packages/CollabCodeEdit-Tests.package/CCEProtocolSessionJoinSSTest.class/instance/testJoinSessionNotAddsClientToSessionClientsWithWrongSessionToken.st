testing
testJoinSessionNotAddsClientToSessionClientsWithWrongSessionToken
	server CCEcreateSessionWith: testSessionCreationPayload from: client1.

	server onMessage: ( CCEMessage joinSession:
			( client1 session token, 'maliciousTokenEnding') asSymbol withIdentifier: #testName ) 
		serialize from: client2.
	
	self deny: (client1 session clients includes: client2)