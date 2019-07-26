methodedit tests
testBuildCCEMethodRemovedEdit
	| event edit methodSelector |
	
	methodSelector := #testMethod.
	event := RemovedEvent method: (CCETestDummy compiledMethodAt: methodSelector) 
		selector: methodSelector class: CCETestDummy.
	
	edit := CCEEditBuilder buildMethodEditFrom: event.
	
	self assert: edit editContent equals: methodSelector.
	self assert: (PackageOrganizer default packageOfClass: CCETestDummy) equals: edit package.
	self assert: (edit isKindOf: CCEMethodRemovedEdit)