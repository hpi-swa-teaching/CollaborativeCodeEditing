tests
testCCEPackageGetsNotfifiedOnRecategorization
	CCEPackageManager default listenForChangesOnScope: self sessionScope for: session.
	self executeWithTemporaryTestMethod: 
		[ testClass organization classify: self testMethod under: #testCategory.
			self assert: (session messages at: self testMethod,testClass) = #testCategory ]