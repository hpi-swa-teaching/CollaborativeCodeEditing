as yet unclassified
testJoinSessionWithNoCorrectSessionTokenGetsClientBackAckJoinMessage
	| sessionToken joinSessionMessage | 
	
	server CCEcreateSessionWith: testSessionPayload from: client1.
	
	sessionToken := client1 session token.
	
	joinSessionMessage := CCEMessage joinSession: (sessionToken , 'maliciousTokenEnding') asSymbol.
	
	server onMessage: joinSessionMessage serialize from: client2.
	
	self assert: (networkInterface2 hasMessageOfType: (CCEMessage serverMsgTypes at: #ackJoinSessionWithError:)).
	
	networkInterface1 clear.
	networkInterface2 clear.
	networkInterface3 clear.