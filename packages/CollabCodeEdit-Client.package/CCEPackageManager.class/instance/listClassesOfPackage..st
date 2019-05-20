accessing
listClassesOfPackage: aString

	^ (self sessionPackages at: aString) classes.
	