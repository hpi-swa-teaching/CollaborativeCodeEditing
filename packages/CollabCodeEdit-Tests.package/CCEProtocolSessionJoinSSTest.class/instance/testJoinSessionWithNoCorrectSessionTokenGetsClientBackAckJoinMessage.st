testing
testJoinSessionWithNoCorrectSessionTokenGetsClientBackAckJoinMessage
	| sessionToken joinSessionMessage | 
	
	server CCEcreateSessionWith: testSessionCreationPayload from: client1.
	
	sessionToken := client1 session token.
	
	joinSessionMessage := CCEMessage joinSession: (sessionToken , 'maliciousTokenEnding') asSymbol withIdentifier: #testName.
	
	server onMessage: joinSessionMessage serialize from: client2.
	
	self assert: (networkInterface2 hasMessageOfType: (CCEMessage serverMsgTypes at: #ackJoinSessionWithError:))