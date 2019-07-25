tests
testListClassesOfPackage
	self 
		assert: (CCEPackageHasher listClassesOfPackage: self testPackage)
		equals: ((PackageInfo named: self testPackage) classes)