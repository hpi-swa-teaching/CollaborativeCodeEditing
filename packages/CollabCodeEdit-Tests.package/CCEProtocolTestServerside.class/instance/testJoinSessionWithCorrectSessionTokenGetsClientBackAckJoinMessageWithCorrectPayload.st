as yet unclassified
testJoinSessionWithCorrectSessionTokenGetsClientBackAckJoinMessageWithCorrectPayload
	| sessionToken joinSessionMessage expectedPayload expectedMessage | 
	
	server CCEcreateSessionWith: testSessionPayload from: client1.	
	sessionToken := client1 session token.	
	joinSessionMessage := CCEMessage joinSession: sessionToken.
	expectedPayload := testSessionPayload.
	expectedMessage := CCEMessage ackJoinSessionWith: testSessionPayload.	
		
	server onMessage: joinSessionMessage serialize from: client2.
	
	
	self assert: (networkInterface2 hasMessageOfType: (CCEMessage serverMsgTypes at: #ackJoinSession:)).
	
	self assert: (IdentityDictionary newFrom: expectedPayload) equals: (networkInterface2 messages at: expectedMessage serialize) payload.

	
	networkInterface1 clear.
	networkInterface2 clear.
	networkInterface3 clear.