tests
testAfterCreateSessionWindowSessionScopeNotNil

	| createSessionModel | 
	
	createSessionModel := model actionCreateSession model.	
	createSessionModel actionNextButton.
	createSessionModel changed: #close.
	
	self assert: (model sessionScope notNil).
	
	
	