tests
testListClassesOfPackage
	self 
		assert: (CCEPackageHasher listClassesOfPackage: self samplePackage)
		equals: ((PackageInfo named: self samplePackage) classes)