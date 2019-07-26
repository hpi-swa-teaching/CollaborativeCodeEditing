testing
testJoinSessionWithNoCorrectSessionTokenGetsClientBackAckJoinMessage
	server CCEcreateSessionWith: testSessionCreationPayload from: client1.
	server onMessage: (CCEMessage joinSession: 
			(client1 session token , 'maliciousTokenEnding') asSymbol withIdentifier: #testName) 
		serialize from: client2.
	
	self assert: (networkInterface2 hasMessageOfType: (CCEMessage serverMessageTypes at: #ackJoinSessionWithError:))