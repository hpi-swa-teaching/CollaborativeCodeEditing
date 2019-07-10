running
testClassModified
	| newlyDefinedClass |
	
	(Smalltalk classNamed: testClassName) ifNotNil: [ :class | class removeFromSystem ].
	
	CCEClassModifiedEdit new 
		editContent: testClassDefinition;
		apply.
	
	newlyDefinedClass := Smalltalk classNamed: testClassName.
	self deny: (newlyDefinedClass isNil).
	
	self assert: newlyDefinedClass superclass equals: testClassDefinition superclass.
	self assert: newlyDefinedClass instVarString equals: testClassDefinition instVarNames.
	self assert: newlyDefinedClass classVariablesString equals: testClassDefinition classVarNames.
	self assert: newlyDefinedClass sharedPoolsString equals: testClassDefinition poolDictionaries.
	self assert: newlyDefinedClass category equals: testClassDefinition category.
	self assert: newlyDefinedClass comment equals: testClassDefinition comment.
	

	