testing
testJoinSessionFromClientWithIdentifierAlreadyInUseGetsErrorMessageBack
	| token joinPayloadForClient2 joinPayloadForClient3 |
	
	server CCEcreateSessionWith: testSessionCreationPayload from: client1.
	token := client1 session token.
	joinPayloadForClient2 := OrderedDictionary newFrom: {#token -> token. #id -> client2 identifier}.
	
	client3 identifier: client2 identifier.
	joinPayloadForClient3 := OrderedDictionary newFrom: {#token -> token. #id -> client3 identifier}.
	
	server CCEjoinSession: joinPayloadForClient2 from: client2.
	
	networkInterface1 clear.
	networkInterface2 clear.
	
	server CCEjoinSession: joinPayloadForClient3 from: client3.
	
	self assert: (networkInterface3 hasMessageOfType: #ackJoinSessionWithError:).
	
	client3 identifier: 'client3Identifier'