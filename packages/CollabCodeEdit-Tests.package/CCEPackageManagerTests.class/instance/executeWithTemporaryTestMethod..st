running
executeWithTemporaryTestMethod: aBlock
	[ testClass compile: self testMethod.
		aBlock value ]
	ensure: [ testClass removeSelector: self testMethod ]