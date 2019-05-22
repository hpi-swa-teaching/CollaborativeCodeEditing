tests-request-handling
testAckCreateSessionFillsCCESessionWithServerSideGeneratedToken
	| expectedToken | 
	
	expectedToken := #testToken.
	
	model ackCreateSession: (OrderedDictionary newFrom: {#token -> expectedToken}).
	
	self assert: expectedToken equals: (CCESession default token).