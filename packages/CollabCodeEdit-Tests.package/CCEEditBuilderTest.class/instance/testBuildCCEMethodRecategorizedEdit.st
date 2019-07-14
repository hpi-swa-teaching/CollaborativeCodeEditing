methodedit tests
testBuildCCEMethodRecategorizedEdit
	| event edit methodSelector |
	
	methodSelector := #testMethod.
	event := (RecategorizedEvent method: (CCETestDummy compiledMethodAt: methodSelector) 
		selector: methodSelector protocol: 'newCategory' class: CCETestDummy).
	
	edit := builder buildMethodEditFrom: event.
	
	self assert: edit method equals: methodSelector.
	self assert: edit category equals: 'newCategory'.
	self assert: (PackageOrganizer default packageOfClass: CCETestDummy) equals: edit package.
	self assert: (edit isKindOf: CCEMethodRecategorizedEdit)