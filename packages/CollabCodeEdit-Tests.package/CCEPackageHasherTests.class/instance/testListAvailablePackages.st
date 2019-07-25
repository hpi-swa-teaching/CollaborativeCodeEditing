tests
testListAvailablePackages
	self 
		assert: CCEPackageHasher listAvailablePackages
		equals: PackageOrganizer default getPackages keys