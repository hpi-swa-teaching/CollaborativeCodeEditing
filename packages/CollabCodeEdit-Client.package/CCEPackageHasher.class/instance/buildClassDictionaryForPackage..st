hashing
buildClassDictionaryForPackage: aString
	self 
		packageHash: 0;
		classesWithHashes: OrderedDictionary new.
	
	(self listClassesOfPackage: aString) do:
		[ :aClass | 
			| classHash methodHashes |
		
			methodHashes := self buildMethodDictionaryForClass: aClass.
			classHash := methodHashes at: #hashSum.
			
			classHash := classHash + aClass instVarNames hash + aClass comment hash + aClass classVariablesString hash + aClass sharedPoolsString hash + aClass category hash.
			
			methodHashes at: #hashSum put: classHash.
			
			packageHash := packageHash + classHash.
			classesWithHashes add: aClass -> methodHashes].
	
	^ OrderedDictionary newFrom: {#hashSum -> packageHash.
								#classHashes -> classesWithHashes}