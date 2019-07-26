testing
testCreateSessionIsCalledAndClientGetsBackAckCreateSessionMessageWithSessionToken
	| createSessionMessage | 
	
	createSessionMessage := CCEMessage createSessionWith: testSessionCreationPayload.
	
	server onMessage: createSessionMessage serialize from: client1.
	
	self assert: (networkInterface1 hasMessageOfType: #ackCreateSession:)