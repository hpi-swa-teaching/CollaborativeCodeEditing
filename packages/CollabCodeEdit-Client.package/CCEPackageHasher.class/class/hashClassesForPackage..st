hashing
hashClassesForPackage: aString
	^ ((self listClassesOfPackage: aString) 
			inject: 0
			into: [ :hashSum :aClass | hashSum + self hashClass: aClass ]) hashMultiply