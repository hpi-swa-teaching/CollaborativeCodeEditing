tests backend
testNewModelInstanceIsInitializedCorrectly
	| temporaryModel | 
	
	temporaryModel := CCEModel new.
	
	self assert: ( temporaryModel createSessionModel isKindOf: CCECreateSessionModel ).
	self assert: ( temporaryModel joinSessionModel isKindOf: CCEJoinSessionModel ).
	self assert: ( temporaryModel leaveSessionModel isKindOf: CCELeaveSessionModel ).
	self assert: ( CCEClient default ) equals: temporaryModel client.
	self assert: ( CCESession default ) equals: temporaryModel session. 
	self assert: CCEClient default owner equals: temporaryModel.
	self assert: ( CCESession default status dependents includes: temporaryModel ).
	self assert: ( CCEAccount default ) equals: temporaryModel account.
	self assert: ( temporaryModel session imageAccount) equals: temporaryModel account
	