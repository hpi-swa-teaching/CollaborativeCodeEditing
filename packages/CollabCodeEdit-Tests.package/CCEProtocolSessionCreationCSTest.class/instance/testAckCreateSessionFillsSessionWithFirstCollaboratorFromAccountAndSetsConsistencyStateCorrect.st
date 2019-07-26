requests backend
testAckCreateSessionFillsSessionWithFirstCollaboratorFromAccountAndSetsConsistencyStateCorrect
	| createdCollaborator |
	
	model receive: (CCEMessage ackCreateSession: #testToken) serialize.
	
	createdCollaborator := session collaborators at: localAccount humanReadableName.
	
	self assert: (createdCollaborator identifier = localAccount humanReadableName).
	self assert: CCECollaborator isConsistentString equals: createdCollaborator consistencyState