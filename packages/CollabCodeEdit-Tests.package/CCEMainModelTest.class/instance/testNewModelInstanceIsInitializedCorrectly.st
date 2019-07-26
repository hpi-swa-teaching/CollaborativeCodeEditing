tests backend
testNewModelInstanceIsInitializedCorrectly
	| modelTemp | 
	
	modelTemp := CCEModel new.
	
	self assert: (modelTemp createSessionModel isKindOf: CCECreateSessionModel).
	self assert: (modelTemp joinSessionModel isKindOf: CCEJoinSessionModel).
	self assert: (modelTemp leaveSessionModel isKindOf: CCELeaveSessionModel).
	self assert: (CCEClient default) equals: modelTemp client.
	self assert: (CCESession default) equals: modelTemp session. 
	self assert: CCEClient default model equals: modelTemp.
	self assert: (CCESession default status dependents includes: modelTemp).
	self assert: (CCEAccount default) equals: modelTemp account.
	self assert: (modelTemp session localAccount) equals: modelTemp account
	