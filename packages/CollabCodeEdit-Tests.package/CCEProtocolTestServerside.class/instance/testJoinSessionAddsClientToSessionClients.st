testing
testJoinSessionAddsClientToSessionClients
	| sessionToken joinSessionMessage | 
	server CCEcreateSessionWith: testSessionPayload from: client1.
	
	sessionToken := client1 session token.
	
	joinSessionMessage := CCEMessage joinSession: sessionToken.
	
	server onMessage: joinSessionMessage serialize from: client2.
	
	self assert: (client1 session clients includes: client2)