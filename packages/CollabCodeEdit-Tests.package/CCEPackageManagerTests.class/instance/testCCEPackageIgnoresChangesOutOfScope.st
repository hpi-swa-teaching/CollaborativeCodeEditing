tests
testCCEPackageIgnoresChangesOutOfScope
	CCEPackageManager default listenForChangesOnScope: #() for: session.
	self 
		compileTestMethod;
		assert: session hasNoMessage