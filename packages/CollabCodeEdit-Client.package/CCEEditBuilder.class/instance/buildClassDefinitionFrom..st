class edits
buildClassDefinitionFrom: anEvent
	| class |
	
	class := anEvent item.
	
	^ CCEClassDefinition 
		superclass: class superclass
		subclass: class name asSymbol 
		instVarNames: class instanceVariablesString 
		classVarNames: class classVariablesString 
		poolDictionaries: class sharedPoolsString 
		category: class category 
		comment: class comment
		