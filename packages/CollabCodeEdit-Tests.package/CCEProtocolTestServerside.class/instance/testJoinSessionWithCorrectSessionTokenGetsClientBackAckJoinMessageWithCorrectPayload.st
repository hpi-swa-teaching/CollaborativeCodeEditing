testing
testJoinSessionWithCorrectSessionTokenGetsClientBackAckJoinMessageWithCorrectPayload
	| sessionToken joinSessionMessage expectedPayload expectedMessage | 
	
	server CCEcreateSessionWith: testSessionCreationPayload from: client1.	
	sessionToken := client1 session token.	
	joinSessionMessage := CCEMessage joinSession: sessionToken.
	
	testSessionCreationPayload at: #collaborators put: (
		OrderedCollection newFrom: {OrderedDictionary newFrom: {#id->client1 identifier . #isConsistent-> client1 isConsistent}}).
	expectedPayload := testSessionCreationPayload.
		
	expectedMessage := CCEMessage ackJoinSessionWith: expectedPayload.	
		
	server onMessage: joinSessionMessage serialize from: client2.
	
	
	self assert: (networkInterface2 hasMessageOfType: (CCEMessage serverMsgTypes at: #ackJoinSession:)).
	
	self assert: (IdentityDictionary newFrom: expectedPayload) equals: (networkInterface2 messages at: expectedMessage serialize) payload