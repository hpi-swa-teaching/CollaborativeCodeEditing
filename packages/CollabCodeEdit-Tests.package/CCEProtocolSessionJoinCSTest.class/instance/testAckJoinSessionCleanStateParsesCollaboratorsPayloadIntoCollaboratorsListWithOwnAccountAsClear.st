requests backend
testAckJoinSessionCleanStateParsesCollaboratorsPayloadIntoCollaboratorsListWithOwnAccountAsClear
	| localAccountInSession |

	model receive: ( CCEMessage ackJoinSessionWith: testAckJoinSessionPayload ) serialize.
	session collaborators do: [ :collaborator | self assert: ( collaborator isKindOf: CCECollaborator ) ].
		
	localAccountInSession := ( session collaborators detect: 
			[ :collaborator | collaborator identifier = imageAccount humanReadableName ] ).
	
	self assert: localAccountInSession notNil.
	self assert: localAccountInSession consistencyState = CCECollaborator isConsistentString