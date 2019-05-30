tests backend
testNewModelInstanceIsInitializedCorrectly
	| model | 
	model := CCEModel new.
	
	self assert: (model createSessionModel isKindOf: CCECreateSessionModel).
	self assert: (model joinSessionModel isKindOf: CCEJoinSessionModel).
	self assert: (model leaveSessionModel isKindOf: CCELeaveSessionModel).
	self assert: (CCEClient default) equals: model client.
	self assert: (CCESession default) equals: model session. 
	self assert: CCEClient default owner equals: model.
	self assert: (CCESession default status dependents includes: model).
	
	