tests-session
testCreateSessionShouldReturnSingletonInstanceOfCCESession
	| cceSession | 
	cceSession := 	model createSessionWith: #('Signals').
	self assert: cceSession == CCESession default.
	
	