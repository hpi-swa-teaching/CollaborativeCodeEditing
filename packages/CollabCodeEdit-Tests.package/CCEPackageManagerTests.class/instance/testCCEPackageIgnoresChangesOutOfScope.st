tests
testCCEPackageIgnoresChangesOutOfScope
	session scope: #().
	self 
		compileTestMethod;
		assert: session hasNoMessage