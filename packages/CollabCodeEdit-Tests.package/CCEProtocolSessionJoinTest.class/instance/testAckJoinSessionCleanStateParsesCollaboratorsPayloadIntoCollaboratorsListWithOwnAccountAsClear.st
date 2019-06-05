requests backend
testAckJoinSessionCleanStateParsesCollaboratorsPayloadIntoCollaboratorsListWithOwnAccountAsClear
	| ackJoinSessionMessage expectedCollaboratorsList |
	
	ackJoinSessionMessage := CCEMessage ackJoinSessionWith: testAckJoinSessionPayload.
	expectedCollaboratorsList := testCollaboratorsList.
	expectedCollaboratorsList at: imageAccount humanReadableName put: (session addCollaboratorFromAccount: imageAccount).
	
	model recieve: ackJoinSessionMessage serialize.
	
	self assert: expectedCollaboratorsList equals: session collaborators.
	
	networkInterface clear