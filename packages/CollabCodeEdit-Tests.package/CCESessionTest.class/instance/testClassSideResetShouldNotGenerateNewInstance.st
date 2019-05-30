test singleton
testClassSideResetShouldNotGenerateNewInstance
	
	| cceSessionBevoreReset | 
	
	cceSessionBevoreReset := CCESession default.
	CCESession reset.
	self assert: cceSessionBevoreReset equals:  CCESession default.
		