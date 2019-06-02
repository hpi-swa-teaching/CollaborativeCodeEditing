testing
testJoinSessionWithCorrectSessionTokenSendsNewUserToOtherClientsInSession
	| sessionToken joinSessionMessage | 
	
	server CCEcreateSessionWith: testSessionPayload from: client1.
	
	sessionToken := client1 session token.
	
	joinSessionMessage := CCEMessage joinSession: sessionToken.
	
	server onMessage: joinSessionMessage serialize from: client2.
	
	self assert: (networkInterface1 hasMessageOfType: (CCEMessage serverMsgTypes at: #newUser:))