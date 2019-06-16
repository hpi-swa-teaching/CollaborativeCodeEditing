tests
testCCEPackageGetsNotfifiedOnRecategorization
	CCEPackageManager default listenForChangesOnScope: self sessionScope for: session.
	[ testClass compile: self testMethod.
		testClass organization classify: self testMethod under: #testCategory.
		self assert: (session changesDict at: self testMethod,testClass) = #testCategory ]
	ensure: [ testClass removeSelector: self testMethod ]