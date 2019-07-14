instance creation
superclass: aClass subclass: aSymbol instVarNames: instVarString classVarNames: classVarString poolDictionaries: poolDictString category: categoryString comment: commentString
	^ self new
		superclass: aClass;
		subclass: aSymbol;
		instVarNames: instVarString;
		classVarNames: classVarString;
		poolDictionaries: poolDictString;
		category: categoryString;
		comment: commentString
		
		