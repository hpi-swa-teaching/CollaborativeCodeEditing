tests
testCCEPackageGetsNotfifiedOnRecategorization
	self compileTestMethod.
	testClass organization classify: testMethod under: #testCategory.
	self assert: (session messages at: testMethod, testClass name) = #testCategory