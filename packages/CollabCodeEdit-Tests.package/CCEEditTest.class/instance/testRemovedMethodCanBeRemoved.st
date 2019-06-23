tests
testRemovedMethodCanBeRemoved
	self compileTestMethod.
	self assert: (testClass canUnderstand: testMethod).
	(CCEMethodRemovedEdit newWith: testMethod in: testClass) apply.
	self deny: (testClass canUnderstand: testMethod)