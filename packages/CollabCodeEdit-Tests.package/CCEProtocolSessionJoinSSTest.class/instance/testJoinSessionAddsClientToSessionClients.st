testing
testJoinSessionAddsClientToSessionClients
	| sessionToken joinSessionMessage | 
	server CCEcreateSessionWith: testSessionCreationPayload from: client1.
	
	sessionToken := client1 session token.
	
	joinSessionMessage := CCEMessage joinSession: sessionToken withIdentifier: #testName.
	
	server onMessage: joinSessionMessage serialize from: client2.
	
	self assert: (client1 session clients includes: client2)