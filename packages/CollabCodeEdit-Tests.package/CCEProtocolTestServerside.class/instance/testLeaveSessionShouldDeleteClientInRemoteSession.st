as yet unclassified
testLeaveSessionShouldDeleteClientInRemoteSession
	| createSessionMessage leaveSessionMessage token | 
	
	createSessionMessage := CCEMessage createSessionWith: testSessionPayload.
	server onMessage: createSessionMessage serialize from: client1.
	
	token := (networkInterface1 messageOfType: #ackCreateSession: ) first payload at: #token.

	leaveSessionMessage := CCEMessage leaveSessionWith: token. 
	
	server onMessage: leaveSessionMessage serialize from: client1.
	
	self assert: 0 equals: (server sessions at: token) clients size.