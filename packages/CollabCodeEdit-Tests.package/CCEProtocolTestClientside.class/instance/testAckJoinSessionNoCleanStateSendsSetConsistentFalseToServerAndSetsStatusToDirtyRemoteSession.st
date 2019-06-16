requests backend
testAckJoinSessionNoCleanStateSendsSetConsistentFalseToServerAndSetsStatusToDirtyRemoteSession
	| ackJoinSessionMessage |	
	testSessionPayload at: #checksum put:  ((testSessionPayload at: #checksum) + 1).
	ackJoinSessionMessage := CCEMessage ackJoinSessionWith: testSessionPayload.
	
	model receive: ackJoinSessionMessage serialize.
	
	self assert: (networkInterface hasMessage: (CCEMessage setConsistent: false) serialize).
	self assert: (CCESessionStatus dirtyRemoteSession = session status name).
	
	networkInterface clear