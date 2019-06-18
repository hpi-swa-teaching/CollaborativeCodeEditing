tests
testCCEPackageIgnoresChangesOutOfScope
	CCEPackageManager default listenForChangesOnScope: #() for: session.
	self executeWithTemporaryTestMethod: [	self assert: session hasNoMessage ]