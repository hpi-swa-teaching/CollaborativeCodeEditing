tests
testCCEPackageGetsNotfifiedOnRemovedMessage.
	self compileTestMethod.
	testClass removeSelector: self testMethod.
	self assert: (session messages at: testClass) = (self testMethod, #Removed)