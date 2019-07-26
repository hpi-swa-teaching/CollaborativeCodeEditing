requests backend
testAckJoinSessionCleanStateSendsSetConsistentTrueToServerAndSetsStatusToCleanRemoteSession
	model receive: (CCEMessage ackJoinSessionWith: testAckJoinSessionPayload) serialize.
	
	self assert: (networkInterface hasMessage: (CCEMessage setConsistent: true) serialize).
	self assert: (CCESessionStatus cleanRemoteSession = session status name)