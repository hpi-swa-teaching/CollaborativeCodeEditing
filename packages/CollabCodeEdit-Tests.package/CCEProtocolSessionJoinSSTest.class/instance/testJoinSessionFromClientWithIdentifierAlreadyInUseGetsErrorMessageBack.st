testing
testJoinSessionFromClientWithIdentifierAlreadyInUseGetsErrorMessageBack
	server CCEcreateSessionWith: testSessionCreationPayload from: client1.
	server CCEjoinSession:  ( OrderedDictionary newFrom: {#token -> client1 session token. #id -> client1 identifier} ) from: client2.
	
	self assert: (networkInterface2 hasMessageOfType: (CCEMessage serverMessageTypes at: #ackJoinSessionWithError:))