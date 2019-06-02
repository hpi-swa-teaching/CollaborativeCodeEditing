requests backend
testAckCreateSessionFillsSessionWithFirstCollaboratorFromAccountAndSetsConsistencyStateCorrect
	| ackCreateSessionMessage createdCollaborator |
	ackCreateSessionMessage := CCEMessage ackCreateSession: #testToken.
	
	model recieve: ackCreateSessionMessage serialize.
	
	createdCollaborator := session collaborators at: testIdentifier.
	
	self assert: (createdCollaborator identifier = imageAccount humanReadableName).
	self assert: CCECollaborator isConsistentString equals: createdCollaborator consistencyState.