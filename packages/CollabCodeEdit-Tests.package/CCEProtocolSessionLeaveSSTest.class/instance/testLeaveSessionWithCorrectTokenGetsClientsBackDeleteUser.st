testing
testLeaveSessionWithCorrectTokenGetsClientsBackDeleteUser
	| sessionToken joinSessionMessage leaveSessionMessage |
	server CCEcreateSessionWith: testSessionCreationPayload from: client1.
	
	sessionToken := client1 session token.
	
	joinSessionMessage := CCEMessage joinSession: sessionToken.
	leaveSessionMessage := CCEMessage leaveSessionWith: sessionToken.
	
	server onMessage: joinSessionMessage serialize from: client2.
	server onMessage: leaveSessionMessage serialize from: client2.
	
	self deny: (client1 session clients includes: client2).
	self assert: (networkInterface1 hasMessageOfType: (CCEMessage serverMsgTypes at: #deleteUser: )).