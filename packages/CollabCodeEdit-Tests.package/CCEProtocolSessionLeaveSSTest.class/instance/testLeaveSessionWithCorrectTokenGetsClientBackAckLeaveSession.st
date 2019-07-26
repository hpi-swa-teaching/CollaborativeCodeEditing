testing
testLeaveSessionWithCorrectTokenGetsClientBackAckLeaveSession
	| leaveSessionMessage token | 
	
	server CCEcreateSessionWith: testSessionCreationPayload from: client1.
	
	token := client1 session token.
	leaveSessionMessage := CCEMessage leaveSessionWith: token.
	
	server onMessage: leaveSessionMessage serialize from: client1.
	
	self assert: (networkInterface1 hasMessageOfType: #ackLeaveSessionWith:)