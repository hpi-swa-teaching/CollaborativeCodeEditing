hashing
hashPackages: anArray	
	^ (anArray 
		inject: 0
		into: [ :hashSum :aPackageName | 
			(self hashClassesForPackage: aPackageName) bitXor: hashSum ]) hashMultiply