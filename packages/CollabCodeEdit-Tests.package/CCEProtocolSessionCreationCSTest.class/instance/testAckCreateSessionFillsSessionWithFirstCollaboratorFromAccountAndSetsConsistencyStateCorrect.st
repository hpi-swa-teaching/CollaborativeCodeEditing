requests backend
testAckCreateSessionFillsSessionWithFirstCollaboratorFromAccountAndSetsConsistencyStateCorrect
	| createdCollaborator |

	model receive:  (CCEMessage ackCreateSession: #testToken) serialize.
	createdCollaborator := session collaborators at: testIdentifier.
	
	self assert: (createdCollaborator identifier = imageAccount humanReadableName).
	self assert: CCECollaborator isConsistentString equals: createdCollaborator consistencyState