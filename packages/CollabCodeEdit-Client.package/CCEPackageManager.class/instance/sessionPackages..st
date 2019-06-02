accessing
sessionPackages: aStringArray
	sessionPackages ifNil: [sessionPackages := OrderedDictionary new].
	
	aStringArray do:
		[ :aPackageName | sessionPackages add: (aPackageName -> (PackageOrganizer default packageNamed: aPackageName ifAbsent: []))]