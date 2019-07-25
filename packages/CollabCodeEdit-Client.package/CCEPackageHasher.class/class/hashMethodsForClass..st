hashing
hashMethodsForClass: aClass
	^ ((self listMethodsOfClass: aClass) 
			inject: 0 
			into: [ :hashSum :aCompiledMethod | 
				hashSum + self calculateHashOfMethodSourceCode: aCompiledMethod ]) hashMultiply