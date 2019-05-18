testHashing
testEqualityOfHashesAfterHashingTheSamePackageTwice

	| testSessionPackage packageManagerClient1 packageManagerClient2 |
	
	testSessionPackage := #('Signals' 'Network').
	
	packageManagerClient1 := CCEPackageManager new sessionPackages: testSessionPackage.
	packageManagerClient2 := CCEPackageManager new sessionPackages: testSessionPackage.
	
	self assert: packageManagerClient1 sessionHash equals: packageManagerClient2 sessionHash.