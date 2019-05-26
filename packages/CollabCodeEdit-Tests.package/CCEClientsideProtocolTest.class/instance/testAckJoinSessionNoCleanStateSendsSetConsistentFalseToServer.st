requests backend
testAckJoinSessionNoCleanStateSendsSetConsistentFalseToServer
	| ackJoinSessionMessage |
	
	testSessionPayload at: #checksum put:  ((testSessionPayload at: #checksum) + 1).
	ackJoinSessionMessage := CCEMessage ackJoinSessionWith: testSessionPayload.
	
	model recieve: ackJoinSessionMessage serialize.
	
	self assert: (networkInterface hasMessage: (CCEMessage setConsistent: false) serialize)