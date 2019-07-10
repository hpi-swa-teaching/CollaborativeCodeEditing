classedit tests
testBuildCCEClassDefinition
	| cceClassDefinition |
	
	cceClassDefinition := builder buildClassDefinitionFrom: (ModifiedClassDefinitionEvent item: CCETestDummy kind: AbstractEvent classKind).
	
	self assert: CCETestDummy superclass equals: cceClassDefinition superclass.
	self assert: CCETestDummy name asSymbol equals: cceClassDefinition subclass.
	self assert: CCETestDummy instanceVariablesString equals: cceClassDefinition instVarNames.
	self assert: CCETestDummy classVariablesString equals: cceClassDefinition classVarNames.
	self assert: CCETestDummy sharedPoolsString equals: cceClassDefinition poolDictionaries.
	self assert: CCETestDummy category equals: cceClassDefinition category.
	self assert: CCETestDummy comment equals: cceClassDefinition comment.