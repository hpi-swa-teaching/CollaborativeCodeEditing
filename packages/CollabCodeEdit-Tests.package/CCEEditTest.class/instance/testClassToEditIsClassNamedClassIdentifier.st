tests
testClassToEditIsClassNamedClassIdentifier
	self assert: (CCEMethodEdit new classIdentifier: testClass name) classToEdit 
				equals: testClass