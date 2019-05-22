hashing
buildMethodDictionaryForClass: aClass
	
	| methodsWithHashes classHash |
	
	classHash := 0.
	methodsWithHashes := OrderedDictionary new.
	
	(self listMethodsOfClass: aClass) keysAndValuesDo:
		[ :aMethodSymbol :aCompiledMethod | 
			| methodHash |
			
			methodHash := self calculateHashOfMethodSourceCode: aCompiledMethod.
			methodsWithHashes add: (aMethodSymbol -> methodHash).
			classHash := classHash + methodHash].
	
	^ OrderedDictionary newFrom: {#hashSum -> classHash.
								#methodHashes -> methodsWithHashes}