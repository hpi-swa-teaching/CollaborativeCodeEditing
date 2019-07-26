instance creation
superclass: aClass subclass: aSymbol instVarNames: anInstanceVariableString classVarNames: aClassVariableString poolDictionaries: aPoolDictionaryString category: aCategoryString comment: aCommentString
	^ self new
		superclass: aClass;
		subclass: aSymbol;
		instVarNames: anInstanceVariableString;
		classVarNames: aClassVariableString;
		poolDictionaries: aPoolDictionaryString;
		category: aCategoryString;
		comment: aCommentString