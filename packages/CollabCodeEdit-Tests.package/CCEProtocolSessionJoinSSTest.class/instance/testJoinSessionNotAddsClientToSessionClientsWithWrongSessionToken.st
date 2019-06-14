testing
testJoinSessionNotAddsClientToSessionClientsWithWrongSessionToken
	| sessionToken joinSessionMessage | 
	server CCEcreateSessionWith: testSessionCreationPayload from: client1.
	
	sessionToken := client1 session token.
	
	joinSessionMessage := CCEMessage joinSession: (sessionToken , 'maliciousTokenEnding') asSymbol withIdentifier: #testName.
	
	server onMessage: joinSessionMessage serialize from: client2.
	
	self deny: (client1 session clients includes: client2)