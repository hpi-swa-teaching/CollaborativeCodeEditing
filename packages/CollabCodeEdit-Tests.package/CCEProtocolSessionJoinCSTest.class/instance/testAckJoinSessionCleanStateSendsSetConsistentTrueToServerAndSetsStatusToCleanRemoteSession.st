requests backend
testAckJoinSessionCleanStateSendsSetConsistentTrueToServerAndSetsStatusToCleanRemoteSession
	| ackJoinSessionMessage |
	
	ackJoinSessionMessage := CCEMessage ackJoinSessionWith: testAckJoinSessionPayload.
	
	model receive: ackJoinSessionMessage serialize.
	
	self assert: (networkInterface hasMessage: (CCEMessage setConsistent: true) serialize).
	self assert: (CCESessionStatus cleanRemoteSession = session status name).
	
	networkInterface clear