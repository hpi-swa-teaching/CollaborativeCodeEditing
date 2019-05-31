as yet unclassified
testCreateSessionIsCalledAndClientGetsBackAckCreateSessionMessageWithSessionToken
	| createSessionMessage | 
	
	createSessionMessage := CCEMessage createSessionWith: testSessionPayload.
	
	server onMessage: createSessionMessage serialize from: client1.
	
	self assert: (networkInterface1 hasMessageOfType: (CCEMessage serverMsgTypes at: #ackCreateSession:)).
	
	networkInterface1 clear.
	networkInterface2 clear.
	networkInterface3 clear.