testing
testLeaveSessionWithCorrectTokenShouldDeleteClientInRemoteSession
	| leaveSessionMessage token | 
	
	server CCEcreateSessionWith: testSessionCreationPayload from: client1.
	
	token := client1 session token.

	leaveSessionMessage := CCEMessage leaveSessionWith: token. 
	
	server onMessage: leaveSessionMessage serialize from: client1.
	
	self assert: 0 equals: (server sessions at: token) clients size