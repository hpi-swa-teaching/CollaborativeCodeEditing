tests
testCCEPackageGetsNotfifiedOnRecategorization
	self compileTestMethod.
	testClass organization classify: testMethod under: #testCategory.
	self assert: (client hasEditOfType: CCEMethodRecategorizedEdit)