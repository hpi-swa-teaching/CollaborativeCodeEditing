singleton
testDefaultShouldAlwaysReturnSameInstance
	self assert: (CCEPackageManager default == CCEPackageManager default).