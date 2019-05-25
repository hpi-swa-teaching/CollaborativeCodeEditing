tests-request-handling
testAckCreateSessionFillsCCESessionWithServerSideGeneratedToken
	| expectedToken | 
	
	expectedToken := #testToken.
	
	model CCEackCreateSession: (OrderedDictionary newFrom: {#token -> expectedToken}).
	
	self assert: expectedToken equals: (CCESession default token).