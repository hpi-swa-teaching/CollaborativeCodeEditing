testing
testJoinSessionAddsClientToSessionClients
	server CCEcreateSessionWith: testSessionCreationPayload from: client1.
	server onMessage: ( CCEMessage joinSession: (client1 session token) withIdentifier: #testName ) 
		serialize from: client2.
	self assert: (client1 session clients includes: client2)