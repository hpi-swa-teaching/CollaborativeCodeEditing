tests backend
testNewModelInstanceIsInitializedCorrectly
	| temporaryModel | 
	
	temporaryModel := CCEModel new.
	
	self assert: (temporaryModel createSessionModel isKindOf: CCECreateSessionModel).
	self assert: (CCEClient default) equals: temporaryModel client.
	self assert: (CCESession default) equals: temporaryModel session. 
	self assert: CCEClient default model equals: temporaryModel.
	self assert: (CCESession default status dependents includes: temporaryModel).
	self assert: (temporaryModel account isKindOf: CCEAccount) .
	self assert: (temporaryModel session localAccount) equals: temporaryModel account
	