tests
testClassRemoved
	
	| newlyCreatedClass | 
	
	self addNewClassFromTestClassDefinition.
	newlyCreatedClass := Smalltalk classNamed: testClassName.
	
	
	(CCEClassRemovedEdit newWith: newlyCreatedClass) apply.
	
	self assert: newlyCreatedClass isObsolete.
	
	(newlyCreatedClass isObsolete) ifFalse: [ newlyCreatedClass removeFromSystem ]
	