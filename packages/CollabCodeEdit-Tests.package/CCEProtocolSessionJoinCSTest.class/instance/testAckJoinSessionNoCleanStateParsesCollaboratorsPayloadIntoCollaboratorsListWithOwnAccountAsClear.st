requests backend
testAckJoinSessionNoCleanStateParsesCollaboratorsPayloadIntoCollaboratorsListWithOwnAccountAsClear
	| localAccountInSession |
	model receive: ( CCEMessage ackJoinSessionWith: testAckJoinSessionPayload) serialize.
	
	localAccountInSession := (session collaborators detect: 
		[ :collaborator | collaborator identifier = imageAccount humanReadableName ]).
	
	self assert: localAccountInSession notNil.
	self assert: localAccountInSession consistencyState = CCECollaborator isConsistentString