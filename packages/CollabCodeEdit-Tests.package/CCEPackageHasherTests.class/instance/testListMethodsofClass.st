tests
testListMethodsofClass
	self 
		assert: (CCEPackageHasher listMethodsOfClass: self class)
		equals: (self class methodDict)