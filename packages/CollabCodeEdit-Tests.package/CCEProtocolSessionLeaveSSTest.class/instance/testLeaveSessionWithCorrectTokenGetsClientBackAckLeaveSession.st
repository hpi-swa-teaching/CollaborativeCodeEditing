testing
testLeaveSessionWithCorrectTokenGetsClientBackAckLeaveSession
	server CCEcreateSessionWith: testSessionCreationPayload from: client1.
	server onMessage: (CCEMessage leaveSessionWith: client1 session token) serialize from: client1.
	
	self assert: (networkInterface1 hasMessageOfType: #ackLeaveSessionWith:)