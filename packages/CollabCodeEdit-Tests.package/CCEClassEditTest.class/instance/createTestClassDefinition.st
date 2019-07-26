running
createTestClassDefinition
	testClassName := 'TestCaseGeneratedClass'.
	testClassDefinition := CCEClassDefinition 
		superclass: Object 
		subclass: (testClassName asSymbol)
		instVarNames: '' 
		classVarNames: '' 
		poolDictionaries: '' 
		category: 'CollabCodeEdit-Tests' 
		comment: 'TestComment'