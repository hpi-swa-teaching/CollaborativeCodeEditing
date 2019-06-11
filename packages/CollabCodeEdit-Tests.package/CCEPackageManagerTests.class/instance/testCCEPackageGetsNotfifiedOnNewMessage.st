tests
testCCEPackageGetsNotfifiedOnNewMessage.
	CCEPackageManager default listenForChangesOnScope: self sessionScope for: session.
	[ testClass compile: #testMethod.
		self assert: (session changesDict at: testClass) = #testMethod ]
	ensure: [ testClass removeSelector: #testMethod ]