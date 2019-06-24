requests backend
testAckJoinSessionNoCleanStateParsesCollaboratorsPayloadIntoCollaboratorsListWithOwnAccountAsNotClear
	| notCleanPayload ackJoinSessionMessage expectedCollaboratorsList createdCollaboratorsList |

	notCleanPayload := testAckJoinSessionPayload.
	notCleanPayload at: #checksum put: (notCleanPayload at: #checksum)+1.
	ackJoinSessionMessage := CCEMessage ackJoinSessionWith: notCleanPayload.
	expectedCollaboratorsList := testCollaboratorsList.
	expectedCollaboratorsList at: imageAccount humanReadableName put: (CCECollaborator newFromAccount: imageAccount).
		
	model receive: ackJoinSessionMessage serialize.
	
	createdCollaboratorsList := session collaborators.
	expectedCollaboratorsList keys do: [
		:key | self assert: ((createdCollaboratorsList at: key) isKindOf: CCECollaborator) ].
	self assert: (createdCollaboratorsList anySatisfy: [ :collaborator | 
		(collaborator identifier = imageAccount humanReadableName) and:
		 collaborator consistencyState  = CCECollaborator isNotConsistentString ]).
	
	session removeAllCollaborators.
	
	networkInterface clear