hashing
hashPackagesForSession: anArray	
	^ (anArray 
			inject: 0
			into: [ :hashSum :aPackageName | 
				hashSum + self buildClassDictionaryForPackage: aPackageName ]) hashMultiply