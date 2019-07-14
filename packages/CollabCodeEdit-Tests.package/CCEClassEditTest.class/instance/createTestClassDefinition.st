running
createTestClassDefinition
	testClassName := 'TestCaseGeneratedClass'.
	testClassSymbol := testClassName asSymbol.
	testClassDefinition := CCEClassDefinition 
		superclass: Object 
		subclass: testClassSymbol
		instVarNames: '' 
		classVarNames: '' 
		poolDictionaries: '' 
		category: 'CollabCodeEdit-Tests' 
		comment: 'TestComment'