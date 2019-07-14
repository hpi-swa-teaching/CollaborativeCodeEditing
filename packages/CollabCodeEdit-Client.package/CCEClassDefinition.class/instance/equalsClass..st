comparing
equalsClass: aClass
	^  (self superclass = aClass superclass) &
		(self subclass = aClass name asSymbol) &
		(self instVarNames = aClass instanceVariablesString) &
		(self classVarNames = aClass classVariablesString) &
		(self poolDictionaries = aClass sharedPoolsString) &
		(self category = aClass category) &
		(self comment = aClass comment)