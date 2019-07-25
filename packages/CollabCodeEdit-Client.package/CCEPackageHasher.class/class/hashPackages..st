hashing
hashPackages: anArray	
	^ (anArray 
			inject: 0
			into: [ :hashSum :aPackageName | 
				(self hashClassesForPackage: aPackageName) + hashSum ]) hashMultiply