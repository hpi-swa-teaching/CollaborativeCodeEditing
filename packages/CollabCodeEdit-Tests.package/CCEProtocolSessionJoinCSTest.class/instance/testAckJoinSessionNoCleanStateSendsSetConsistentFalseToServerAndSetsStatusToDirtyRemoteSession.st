requests backend
testAckJoinSessionNoCleanStateSendsSetConsistentFalseToServerAndSetsStatusToDirtyRemoteSession
	testAckJoinSessionPayload at: #checksum put:  ((testAckJoinSessionPayload at: #checksum) + 1).

	model receive: (CCEMessage ackJoinSessionWith: testAckJoinSessionPayload) serialize.
	
	self assert: (networkInterface hasMessage: (CCEMessage setConsistent: false) serialize).
	self assert: (CCESessionStatus dirtyRemoteSession = session status name)