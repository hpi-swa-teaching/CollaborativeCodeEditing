tests
testCCEPackageGetsNotfifiedOnRemovedMessage.
	self compileTestMethod.
	testClass removeSelector: testMethod.
	self assert: (session messages at: testClass) = (testMethod, #Removed)