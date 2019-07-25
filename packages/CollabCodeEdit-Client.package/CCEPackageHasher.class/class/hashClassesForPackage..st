hashing
hashClassesForPackage: aString
	^ ((self listClassesOfPackage: aString) 
			inject: 0
			into: [ :hashSum :aClass | (self hashClass: aClass) + hashSum ]) hashMultiply