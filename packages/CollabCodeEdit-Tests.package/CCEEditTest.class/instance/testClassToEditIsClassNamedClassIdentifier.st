tests
testClassToEditIsClassNamedClassIdentifier
	self assert: (CCEEdit new classIdentifier: testClass name) classToEdit 
				equals: testClass