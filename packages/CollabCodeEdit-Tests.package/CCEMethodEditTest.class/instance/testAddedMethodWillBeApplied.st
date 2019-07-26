apply tests
testAddedMethodWillBeApplied
	(CCEMethodAddedOrModifiedEdit newWith: testMethod in: testClass) apply.
	self assert: (testClass canUnderstand: testMethod)