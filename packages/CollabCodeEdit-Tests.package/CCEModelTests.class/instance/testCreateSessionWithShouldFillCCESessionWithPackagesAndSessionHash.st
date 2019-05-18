tests-session
testCreateSessionWithShouldFillCCESessionWithPackagesAndSessionHash
	| cceSession | 
	cceSession := 	model createSessionWith: #('Signals').
	self assert: cceSession == CCESession default.
	
	