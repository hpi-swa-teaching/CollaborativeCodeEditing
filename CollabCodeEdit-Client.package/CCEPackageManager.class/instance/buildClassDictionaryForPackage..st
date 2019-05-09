hashing
buildClassDictionaryForPackage: aString
	
	| classesWithHashes packageHash |
	
	packageHash := 0.
	classesWithHashes := OrderedDictionary new.
	
	(self listClassesOfPackage: aString) do:
		[ :aClass | 
			| classHash methodHashes |
		
			methodHashes := self buildMethodDictionaryForClass: aClass.
			classHash := methodHashes at: #hashSum.
			packageHash := packageHash + classHash.
			classesWithHashes add: aClass -> methodHashes].
	
	^ OrderedDictionary newFrom: {#hashSum -> packageHash.
								#classHashes -> classesWithHashes}