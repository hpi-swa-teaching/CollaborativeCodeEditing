tests
testClassRenamed
	| newName | 
	
	newName := 'TestGeneratedClass2'.	
	self addNewClassFromTestClassDefinition.
	
	[ CCEClassRenamedEdit new
		renamedClass: (Smalltalk classNamed: testClassName);
		newName: newName;
		oldName: testClassName;
		apply.	
	self deny: ((Smalltalk classNamed: newName) isNil).
	self assert: ((Smalltalk classNamed: testClassName) isNil) ] 
      	ensure: [ (Smalltalk classNamed: newName) removeFromSystem ]
	
	
	
	