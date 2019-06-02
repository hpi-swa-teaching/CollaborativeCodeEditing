accessing
listClassesOfPackage: aString
	^ (PackageInfo named: aString) classes
	