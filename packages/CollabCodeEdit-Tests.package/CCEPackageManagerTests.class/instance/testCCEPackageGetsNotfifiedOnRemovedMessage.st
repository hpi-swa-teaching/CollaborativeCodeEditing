tests
testCCEPackageGetsNotfifiedOnRemovedMessage.
	self compileTestMethod.
	testClass removeSelector: testMethod.
	self assert: (client hasEditOfType: CCEMethodRemovedEdit)