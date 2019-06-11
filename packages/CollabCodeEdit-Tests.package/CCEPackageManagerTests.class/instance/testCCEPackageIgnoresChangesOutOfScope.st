tests
testCCEPackageIgnoresChangesOutOfScope
	CCEPackageManager default listenForChangesOnScope: #() for: session.
	[ testClass compile: #testMethod.
		self assert: session changesDict isEmpty ]
	ensure: [ testClass removeSelector: #testMethod ]
	