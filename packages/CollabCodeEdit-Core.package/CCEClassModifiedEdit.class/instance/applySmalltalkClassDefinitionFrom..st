applying
applySmalltalkClassDefinitionFrom: aCCEClassDefinition
	ClassBuilder new 
		superclass: aCCEClassDefinition superclass
		subclass: aCCEClassDefinition subclass
		instanceVariableNames: aCCEClassDefinition instVarNames
		classVariableNames: aCCEClassDefinition classVarNames
		poolDictionaries: aCCEClassDefinition poolDictionaries
		category: aCCEClassDefinition category
		