tests
testCCEPackageIgnoresChangesOutOfScope
	packageManager scope: #().
	self 
		compileTestMethod;
		assert: client hasNoMessage