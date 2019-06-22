instance creation
newWith: aMethodSource in: aClass
	^ self new
			editContent: aMethodSource;
			classIdentifier: aClass name