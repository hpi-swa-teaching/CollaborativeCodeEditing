instance creation
newWith: aMethodSymbol to: aCategory in: aClass
	^ self new
		category: aCategory;
		method: aMethodSymbol;
		classIdentifier: aClass name;
		yourself