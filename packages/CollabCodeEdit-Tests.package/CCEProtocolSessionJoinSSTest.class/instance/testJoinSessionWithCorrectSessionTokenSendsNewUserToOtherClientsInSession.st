testing
testJoinSessionWithCorrectSessionTokenSendsNewUserToOtherClientsInSession
	| sessionToken joinSessionMessage expectedMessage | 
	
	expectedMessage := CCEMessage newUser: client2 identifier.
	server CCEcreateSessionWith: testSessionCreationPayload from: client1.
	
	sessionToken := client1 session token.
	
	joinSessionMessage := CCEMessage joinSession: sessionToken withIdentifier: client2 identifier.
	
	server onMessage: joinSessionMessage serialize from: client2.
	
	self assert: (networkInterface1 hasMessageOfType: (CCEMessage serverMessageTypes at: #newUser:)).
	self assert: ((networkInterface1 messages at: expectedMessage serialize) payload at: #id) = client2 identifier