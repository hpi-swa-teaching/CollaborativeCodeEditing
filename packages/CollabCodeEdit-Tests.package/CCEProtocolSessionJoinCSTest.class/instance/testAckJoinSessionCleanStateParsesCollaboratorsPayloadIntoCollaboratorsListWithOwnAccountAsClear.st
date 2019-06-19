requests backend
testAckJoinSessionCleanStateParsesCollaboratorsPayloadIntoCollaboratorsListWithOwnAccountAsClear
	| ackJoinSessionMessage expectedCollaboratorsList createdCollaboratorsList |
	
	ackJoinSessionMessage := CCEMessage ackJoinSessionWith: testAckJoinSessionPayload.
	expectedCollaboratorsList := testCollaboratorsList.
	expectedCollaboratorsList at: imageAccount humanReadableName put: (CCECollaborator newFromAccount: imageAccount).
		
	model receive: ackJoinSessionMessage serialize.
	
	createdCollaboratorsList := session collaborators.
	expectedCollaboratorsList keys do: [:key | self assert: ((createdCollaboratorsList at: key) isKindOf: CCECollaborator)].
	self assert: (createdCollaboratorsList anySatisfy: [ :collaborator | 
		(collaborator identifier = imageAccount humanReadableName) and:
		 collaborator consistencyState  = CCECollaborator isConsistentString]).
	
	session removeAllCollaborators.
	
	networkInterface clear