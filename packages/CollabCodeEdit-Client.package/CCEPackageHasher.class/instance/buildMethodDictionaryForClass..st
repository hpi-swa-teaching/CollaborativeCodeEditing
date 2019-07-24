hashing
buildMethodDictionaryForClass: aClass
	self 
		classHash: 0;
		methodsWithHashes: OrderedDictionary new.
	
	(self listMethodsOfClass: aClass) keysAndValuesDo:
		[ :aMethodSymbol :aCompiledMethod | 
			self addMethod: aMethodSymbol with: aCompiledMethod ].
	
	^ OrderedDictionary newFrom: {#hashSum -> classHash.
								#methodHashes -> methodsWithHashes}