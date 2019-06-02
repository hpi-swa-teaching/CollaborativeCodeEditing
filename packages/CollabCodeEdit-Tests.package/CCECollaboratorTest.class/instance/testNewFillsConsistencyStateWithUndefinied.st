tests
testNewFillsConsistencyStateWithUndefinied
	| createdCCECollaborator | 
	
	createdCCECollaborator := CCECollaborator new.
	self assert: CCECollaborator isUndefinedString equals: createdCCECollaborator consistencyState