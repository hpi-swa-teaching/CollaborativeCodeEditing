methodedit tests
testBuildCCEMethodRecategorizedEdit
	| edit methodSelector |
	
	methodSelector := #testMethod.
	edit := builder buildMethodEditFrom: ( RecategorizedEvent method: (CCETestDummy compiledMethodAt: methodSelector )
		selector: methodSelector protocol: 'newCategory' class: CCETestDummy).
	self assert: edit method equals: methodSelector.
	self assert: edit category equals: 'newCategory'.
	self assert: (PackageOrganizer default packageOfClass: CCETestDummy) equals: edit package.
	self assert: (edit isKindOf: CCEMethodRecategorizedEdit)