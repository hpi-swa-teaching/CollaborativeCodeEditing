tests
testCCEPackageGetsNotfifiedOnNewMessage.
	CCEPackageManager default listenForChangesOnScope: self sessionScope for: session.
	[ testClass compile: self testMethod.
		self assert: (session changesDict at: testClass) = self testMethod ]
	ensure: [ testClass removeSelector: self testMethod ]