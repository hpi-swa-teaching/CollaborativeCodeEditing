testing
testLeaveSessionWithNoCorrectTokenShouldNotDeleteClientInRemoteSession
	| leaveSessionMessage token | 
	
	server CCEcreateSessionWith: testSessionPayload from: client1.
	
	token := client1 session token.
	leaveSessionMessage := CCEMessage leaveSessionWith: (token, 'maliciousTokenEnding') asSymbol.
	
	server onMessage: leaveSessionMessage serialize from: client1.
	
	self deny: 0 = (server sessions at: token) clients size