test singleton
testDefaultShouldAlwaysReturnTheSameInstance
	self assert: CCESession default  == CCESession default.
