comparing
equalsClassDefinition: aCCEClassDefinition
	^ (self superclass name asSymbol = aCCEClassDefinition superclass name asSymbol) &
		(self subclass = aCCEClassDefinition subclass) &
		(self instVarNames = aCCEClassDefinition instVarNames) &
		(self classVarNames = aCCEClassDefinition classVarNames) &
		(self poolDictionaries = aCCEClassDefinition poolDictionaries) &
		(self category = aCCEClassDefinition category) &
		(self comment = aCCEClassDefinition comment)