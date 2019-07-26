requests backend
testAckJoinSessionNoCleanStateParsesCollaboratorsPayloadIntoCollaboratorsListWithOwnAccountAsNotClear
	| localAccountInSession |

	testAckJoinSessionPayload at: #checksum put: (testAckJoinSessionPayload at: #checksum)+1.
	model receive: (CCEMessage ackJoinSessionWith: testAckJoinSessionPayload) serialize.
	
	localAccountInSession := (session collaborators detect: 
			[ :collaborator | collaborator identifier = imageAccount humanReadableName ]).
	
	self assert: localAccountInSession notNil.
	self assert: localAccountInSession consistencyState = CCECollaborator isNotConsistentString