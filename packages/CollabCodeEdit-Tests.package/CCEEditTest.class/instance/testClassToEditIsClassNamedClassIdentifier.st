tests
testClassToEditIsClassNamedClassIdentifier
	self assert: (CCEEdit new classIdentifier: self testClass name) classToEdit 
				equals: self testClass