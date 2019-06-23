tests
testCCEPackageIgnoresChangesOutOfScope
	packageManager listenForChangesOnScope: #() for: session.
	self 
		compileTestMethod;
		assert: session hasNoMessage