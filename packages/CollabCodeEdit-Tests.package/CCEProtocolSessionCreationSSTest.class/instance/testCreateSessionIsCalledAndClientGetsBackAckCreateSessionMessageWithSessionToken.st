testing
testCreateSessionIsCalledAndClientGetsBackAckCreateSessionMessageWithSessionToken
	server onMessage: (CCEMessage createSessionWith: testSessionCreationPayload) serialize from: client1.
	self assert: (networkInterface1 hasMessageOfType: (CCEMessage serverMessageTypes at: #ackCreateSession:))