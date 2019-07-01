tests
testCCEPackageGetsNotfifiedOnNewMessage
	self 
		compileTestMethod;
		assert:  (client hasEditOfType: CCEMethodAddedOrModifiedEdit)