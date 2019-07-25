hashing
hashMethodsForClass: aClass
	^ ((self listMethodsOfClass: aClass) 
			inject: 0 
			into: [ :hashSum :aCompiledMethod | 
				(self calculateHashOfMethodSourceCode: aCompiledMethod) + hashSum ]) 
					hashMultiply