as yet unclassified
testLeaveSessionWithNoCorrectTokenGetsClientBackAckLeaveSessionWithError
	| leaveSessionMessage token | 
	
	server CCEcreateSessionWith: testSessionPayload from: client1.
	
	token := client1 session token.
	leaveSessionMessage := CCEMessage leaveSessionWith: (token, 'maliciousTokenEnding') asSymbol.
	
	server onMessage: leaveSessionMessage serialize from: client1.
	
	self assert: (networkInterface1 hasMessageOfType: (CCEMessage serverMsgTypes at: #ackLeaveSessionWithError:)).
	
	networkInterface1 clear.
	networkInterface2 clear.
	networkInterface3 clear.