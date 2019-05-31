as yet unclassified
testLeaveSessionWithCorrectTokenShouldDeleteClientInRemoteSession
	| leaveSessionMessage token | 
	
	server CCEcreateSessionWith: testSessionPayload from: client1.
	
	token := client1 session token.

	leaveSessionMessage := CCEMessage leaveSessionWith: token. 
	
	server onMessage: leaveSessionMessage serialize from: client1.
	
	self assert: 0 equals: (server sessions at: token) clients size.
	
	networkInterface1 clear.
	networkInterface2 clear.
	networkInterface3 clear.