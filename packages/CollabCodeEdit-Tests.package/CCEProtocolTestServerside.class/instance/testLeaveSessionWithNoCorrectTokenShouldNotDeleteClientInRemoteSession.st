as yet unclassified
testLeaveSessionWithNoCorrectTokenShouldNotDeleteClientInRemoteSession
	| leaveSessionMessage token | 
	
	server CCEcreateSessionWith: testSessionPayload from: client1.
	
	token := client1 session token.
	leaveSessionMessage := CCEMessage leaveSessionWith: (token, 'maliciousTokenEnding') asSymbol.
	
	server onMessage: leaveSessionMessage serialize from: client1.
	
	self deny: 0 equals: (server sessions at: token) clients size.
	
	networkInterface1 clear.
	networkInterface2 clear.
	networkInterface3 clear.