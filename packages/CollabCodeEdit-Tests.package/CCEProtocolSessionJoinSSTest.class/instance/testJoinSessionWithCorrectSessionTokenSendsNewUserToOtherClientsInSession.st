testing
testJoinSessionWithCorrectSessionTokenSendsNewUserToOtherClientsInSession
	server CCEcreateSessionWith: testSessionCreationPayload from: client1.
	server onMessage: ( CCEMessage joinSession: 
			( client1 session token ) withIdentifier: client2 identifier )
		serialize from: client2.
	
	self assert: (networkInterface1 hasMessageOfType: (CCEMessage serverMessageTypes at: #newUser:)).
	self assert: ((networkInterface1 messages at: (CCEMessage newUser: client2 identifier) serialize) payload at: #id) = client2 identifier
