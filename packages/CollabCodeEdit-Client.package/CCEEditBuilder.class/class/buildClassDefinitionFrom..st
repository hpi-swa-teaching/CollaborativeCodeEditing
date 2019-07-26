class edit
buildClassDefinitionFrom: anEvent
	^ CCEClassDefinition 
		superclass: anEvent item superclass
		subclass: anEvent item name asSymbol 
		instVarNames: anEvent item instanceVariablesString 
		classVarNames: anEvent item classVariablesString 
		poolDictionaries: anEvent item sharedPoolsString 
		category: anEvent item category 
		comment: anEvent item comment