requests backend
testAckJoinSessionNoCleanStateSendsSetConsistentFalseToServerAndSetsStatusToDirtyRemoteSession
	| ackJoinSessionMessage |	
	testAckJoinSessionPayload at: #checksum put:  ((testAckJoinSessionPayload at: #checksum) + 1).
	ackJoinSessionMessage := CCEMessage ackJoinSessionWith: testAckJoinSessionPayload.
	
	model recieve: ackJoinSessionMessage serialize.
	
	self assert: (networkInterface hasMessage: (CCEMessage setConsistent: false) serialize).
	self assert: (CCESessionStatus dirtyRemoteSession = session status name).
	
	networkInterface clear