testing
testLeaveSessionWithCorrectTokenGetsClientBackAckLeaveSession
	| leaveSessionMessage token | 
	
	server CCEcreateSessionWith: testSessionPayload from: client1.
	
	token := client1 session token.
	leaveSessionMessage := CCEMessage leaveSessionWith: token.
	
	server onMessage: leaveSessionMessage serialize from: client1.
	
	self assert: (networkInterface1 hasMessageOfType: (CCEMessage serverMsgTypes at: #ackLeaveSessionWith:))