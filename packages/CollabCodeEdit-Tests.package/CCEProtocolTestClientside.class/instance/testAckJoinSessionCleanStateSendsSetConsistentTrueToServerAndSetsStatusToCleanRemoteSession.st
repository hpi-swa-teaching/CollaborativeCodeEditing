requests backend
testAckJoinSessionCleanStateSendsSetConsistentTrueToServerAndSetsStatusToCleanRemoteSession
	| ackJoinSessionMessage |
	ackJoinSessionMessage := CCEMessage ackJoinSessionWith: testSessionPayload.
	
	model recieve: ackJoinSessionMessage serialize.
	
	self assert: (networkInterface hasMessage: (CCEMessage setConsistent: true) serialize).
	self assert: (CCESessionStatus cleanRemoteSession = session status name).
	
	networkInterface clear