tests
testAddedMethodWillBeApplied
	(CCEMethodAddedOrModifiedEdit newWith: self testMethod in: self testClass) apply.
	self assert: (CCETestDummy canUnderstand: self testClass)