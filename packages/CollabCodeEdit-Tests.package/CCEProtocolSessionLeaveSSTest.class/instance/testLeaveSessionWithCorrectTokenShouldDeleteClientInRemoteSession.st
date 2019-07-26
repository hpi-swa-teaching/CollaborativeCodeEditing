testing
testLeaveSessionWithCorrectTokenShouldDeleteClientInRemoteSession
	server CCEcreateSessionWith: testSessionCreationPayload from: client1.
	server onMessage: (CCEMessage leaveSessionWith: client1 session token) serialize from: client1.	
	self assert: 0 equals: (server sessions at: client1 session token) clients size