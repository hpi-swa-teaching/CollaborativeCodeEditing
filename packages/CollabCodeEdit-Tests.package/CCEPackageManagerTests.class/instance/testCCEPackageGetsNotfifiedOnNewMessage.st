tests
testCCEPackageGetsNotfifiedOnNewMessage.
	CCEPackageManager default listenForChangesOnScope: self sessionScope for: session.
	self executeWithTemporaryTestMethod: 
		[ self assert: (session messages at: testClass) = (self testMethod, #Changed) ]