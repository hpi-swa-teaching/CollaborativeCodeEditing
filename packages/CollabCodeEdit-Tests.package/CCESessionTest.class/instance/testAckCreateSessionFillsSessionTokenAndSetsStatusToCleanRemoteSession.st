tests
testAckCreateSessionFillsSessionTokenAndSetsStatusToCleanRemoteSession
	session status setToNoRemoteSession.
	session token: nil.
	
	session createSession: ( OrderedDictionary newFrom: {#token -> #testToken}).
	
	self assert: CCESessionStatus cleanRemoteSession equals: (session status name).
	self assert: #testToken equals: (session token)