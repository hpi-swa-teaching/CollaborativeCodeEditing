testing
testLeaveSessionWithCorrectTokenGetsClientsBackNewUser
	| token |
	server CCEcreateSessionWith: (OrderedDictionary newFrom: { #scope -> 'testScope'. #checksum -> 1234 }) from: client1.
	token := networkInterface1 singleMessage payload at: #token.
	
	server onMessage: (CCEMessage leaveSessionWith: token) from: client1.
	
	self assert: (networkInterface1 hasMessageOfType: (CCEMessage serverMsgTypes at: #deleteUser:) ).