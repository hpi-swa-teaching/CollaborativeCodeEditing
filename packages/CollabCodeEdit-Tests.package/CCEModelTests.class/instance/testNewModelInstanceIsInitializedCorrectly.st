tests-session
testNewModelInstanceIsInitializedCorrectly
	| model | 
	model := CCEModel new.
	
	self assert: (model createSessionModel isKindOf: CCECreateSessionModel).
	self assert: (model joinSessionModel isKindOf: CCEJoinSessionModel).
	self assert: (CCEClient default) equals: model client.
	self assert: (CCESession default) equals: model session. 
	
	