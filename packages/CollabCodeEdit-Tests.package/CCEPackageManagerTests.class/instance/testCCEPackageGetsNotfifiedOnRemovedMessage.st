tests
testCCEPackageGetsNotfifiedOnRemovedMessage.
	CCEPackageManager default listenForChangesOnScope: self sessionScope for: session.
	self executeWithTemporaryTestMethod: 
		[ testClass removeSelector: self testMethod.
			self assert: (session changesDict at: testClass) = (self testMethod, #Removed) ]