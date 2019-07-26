requests backend
testAckCreateSessionFillsSessionWithFirstCollaboratorFromAccountAndSetsConsistencyStateCorrect
	| createdCollaborator |
	
	model receive: (CCEMessage ackCreateSession: #testToken) serialize.
	
	createdCollaborator := session collaborators at: imageAccount humanReadableName.
	
	self assert: (createdCollaborator identifier = imageAccount humanReadableName).
	self assert: CCECollaborator isConsistentString equals: createdCollaborator consistencyState