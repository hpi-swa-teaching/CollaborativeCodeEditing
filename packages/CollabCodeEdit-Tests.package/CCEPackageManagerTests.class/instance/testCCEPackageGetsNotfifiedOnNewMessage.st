tests
testCCEPackageGetsNotfifiedOnNewMessage
	self 
		compileTestMethod;
		assert: (session messages at: (testClass name, #AddedOrModified))  
				equals: testMethod