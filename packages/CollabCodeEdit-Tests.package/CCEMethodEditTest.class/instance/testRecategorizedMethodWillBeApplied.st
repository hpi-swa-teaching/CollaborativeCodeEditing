apply tests
testRecategorizedMethodWillBeApplied
	self compileTestMethod.
	(CCEMethodRecategorizedEdit newWith: testMethod to: #testCategory in: testClass) apply.
	self assert: (testClass organization categoryOfElement: testMethod) equals: #testCategory