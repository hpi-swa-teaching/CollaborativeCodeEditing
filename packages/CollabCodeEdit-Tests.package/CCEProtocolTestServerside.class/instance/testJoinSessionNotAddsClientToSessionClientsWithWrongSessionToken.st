testing
testJoinSessionNotAddsClientToSessionClientsWithWrongSessionToken
	| sessionToken joinSessionMessage | 
	server CCEcreateSessionWith: testSessionPayload from: client1.
	
	sessionToken := client1 session token.
	
	joinSessionMessage := CCEMessage joinSession: (sessionToken , 'maliciousTokenEnding') asSymbol.
	
	server onMessage: joinSessionMessage serialize from: client2.
	
	self deny: (client1 session clients includes: client2)